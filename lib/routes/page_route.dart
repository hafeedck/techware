import 'package:flutter/material.dart';
import 'package:machine_test/views/login/login_view.dart';
import 'package:machine_test/views/login/pin_check_view.dart';
import 'package:machine_test/views/login/pin_setup_view.dart';
import 'package:machine_test/views/login/sign_up.dart';
import 'package:machine_test/views/product/product_details_view.dart';
import 'package:machine_test/views/product/product_list_view.dart';
import 'package:machine_test/views/product/produt_add_view.dart';
import 'package:machine_test/views/splash/splash_view.dart';

Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  '/login': (context) => LoginView(),
  '/splash': (context) => const SplashView(),
  '/pin-set': (context) => const PinSetUpView(),
  '/pin-check': (context) => const PinCheckView(),
  '/signup': (context) => SignUpView(),
  '/product-home': (context) => const ProductListScreen(),
  '/product-add': (context) => ProductAddView(),
  '/product-deatails': (context) => const ProductDetailView()
};
