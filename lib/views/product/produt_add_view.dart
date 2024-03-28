import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_test/bloc/product/product_bloc.dart';
import 'package:machine_test/widgets/app_bar/common_appbar.dart';
import 'package:machine_test/widgets/button/common_buttons.dart';
import 'package:machine_test/widgets/extension/widget_extentions.dart';
import 'package:machine_test/widgets/style/color.dart';

class ProductAddView extends StatelessWidget {
  ProductAddView({super.key});
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _measurementController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final productBloc = BlocProvider.of<ProductBloc>(context);
    return Scaffold(
      appBar: CommonAppbar(
        label: 'Product Add',
        onpress: () async {},
      ),
      body: BlocListener<ProductBloc, ProductState>(
        listener: (context, state) {
          if (state.status == "Sucessfully Added") {
            toast(state.status.toString());
          } else {}
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    20.0.spaceY,
                    TextFormField(
                      controller: _nameController,
                      decoration: const InputDecoration(
                        labelText: 'Product Name',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter product name';
                        }
                        return null;
                      },
                    ),
                    20.0.spaceY,
                    TextFormField(
                      controller: _measurementController,
                      decoration: const InputDecoration(
                        labelText: 'Quantity',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter measurment';
                        }
                        return null;
                      },
                    ),
                    20.0.spaceY,
                    TextFormField(
                      controller: _priceController,
                      decoration: const InputDecoration(
                        labelText: 'Price',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter price';
                        }
                        return null;
                      },
                    ),
                    25.0.spaceY,
                    CommonButton(
                      isLoading: state.isloading,
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                        User? user = FirebaseAuth.instance.currentUser;
                        productBloc.add(ProductEvent.addProduct(
                            _nameController.text,
                            _measurementController.text,
                            _priceController.text,
                            user!.uid.toString()));
                        Navigator.pop(context);
                      },
                      text: 'Add Product',
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
