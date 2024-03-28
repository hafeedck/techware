import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:machine_test/widgets/app_bar/common_appbar.dart';
import 'package:machine_test/widgets/extension/widget_extentions.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DocumentSnapshot argument =
        ModalRoute.of(context)!.settings.arguments as DocumentSnapshot;
    return Scaffold(
      appBar: CommonAppbar(
        label: 'Product Details',
        onpress: () async {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: ${argument["name"]}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            15.0.spaceY,
            Text('Measurement: ${argument['measurment']}'),
            15.0.spaceY,
            Text('Price: ₹${argument['price']}'),
            25.0.spaceY,
            Center(
              child: QrImageView(
                data:
                    "${argument.id},${argument["name"]},${argument["measurment"]},₹${argument["price"]}",
                version: QrVersions.auto,
                size: 200.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
