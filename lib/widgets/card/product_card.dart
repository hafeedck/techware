import 'package:flutter/material.dart';
import 'package:machine_test/widgets/style/color.dart';
import 'package:machine_test/widgets/text/common_text.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String price;
  final String qty;
  final Function onTap;
  const ProductCard(
      {super.key,
      required this.name,
      required this.price,
      required this.onTap,
      required this.qty});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(255, 240, 235, 235),
                    blurRadius: 3.0,
                    spreadRadius: 3),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: Icon(Icons.production_quantity_limits,
                    size: 50, color: AppColors().primaryColor),
              ),
              greyText("Qty: $qty", 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  blackText(
                    name,
                    20,
                  ),
                  greyText("₹ $price", 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
