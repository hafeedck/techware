import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:machine_test/widgets/app_bar/common_appbar.dart';
import 'package:machine_test/widgets/card/product_card.dart';
import 'package:machine_test/widgets/popup/popup.dart';
import 'package:machine_test/widgets/style/color.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(
        label: 'Product List',
        onpress: () async {},
        visible: true,
        onClick: () async {
          dynamic returnResponse = await openDialog("Do you want to logout",
              "Are you sure want to exit now?", context);
          if (returnResponse == true) {
            const storage = FlutterSecureStorage();
            await storage.deleteAll();
            await FirebaseAuth.instance.signOut();
            // ignore: use_build_context_synchronously
            Navigator.pushNamedAndRemoveUntil(
                context, '/splash', (route) => false);
          }
        },
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('product')
            .orderBy('name', descending: false)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return const Center(child: Text('No products available'));
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          List<DocumentSnapshot> products = snapshot.data!.docs
              .where(
                  (doc) => doc['uid'] == FirebaseAuth.instance.currentUser!.uid)
              .toList();

          if (products.isEmpty) {
            return const Center(child: Text('No products available'));
          }
          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ProductCard(
                onTap: () {
                  Navigator.pushNamed(context, '/product-details',
                      arguments: products[index]);
                },
                name: products[index]["name"],
                qty: products[index]["measurment"],
                price: products[index]["price"],
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(60)),
        onPressed: () {
          Navigator.pushNamed(
            context,
            '/product-add',
          );
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors().primaryColor,
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
