import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppColors {
  Color primaryColor = const Color(0xFFE94B55);
}

void errorToast(String message,
    {Color? color, ToastGravity? gravity = ToastGravity.BOTTOM}) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: gravity,
      timeInSecForIosWeb: 1,
      backgroundColor: color ?? Colors.white,
      textColor: Colors.red,
      fontSize: 16.0);
}

void toast(String message, {Color? color}) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: color ?? Colors.red.withOpacity(0.5),
      textColor: Colors.black,
      fontSize: 16.0);
}

void toast1(String message, {Color? color}) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: color ?? Colors.white,
      textColor: Colors.black,
      fontSize: 16.0);
}

void toast2(String message, ToastGravity gravity, Toast toastType,
    {Color? color}) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: toastType,
      gravity: gravity,
      timeInSecForIosWeb: 1,
      backgroundColor: color ?? Colors.black,
      textColor: Colors.white,
      fontSize: 16.0);
}

Color hexToColor(String code) {
  return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}
