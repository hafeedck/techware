import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('products').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          List<DocumentSnapshot> products = snapshot.data!.docs;

          if (products.isEmpty) {
            return const Center(child: Text('No products available'));
          }

          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              Object? productData = products[index].data();
              // return ListTile(
              //   title: Text(productData!['name']),
              //   subtitle: Text(productData!['measurement']),
              //   trailing: Text('\$${productData!['price'].toStringAsFixed(2)}'),
              //   // You can customize the ListTile as needed
              // );
            },
          );
        },
      ),
    );
  }
}
