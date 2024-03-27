import 'package:flutter/material.dart';

Text blackText(
  String label,
  double fontSize, {
  TextAlign? textAlign,
  FontWeight? fontWeight = FontWeight.w400,
  TextOverflow? textOverflow,
}) {
  return Text(
    label,
    textAlign: textAlign,
    style: TextStyle(
        fontFamily: 'Lato',
        overflow: textOverflow,
        color: Colors.black,
        fontSize: fontSize,
        fontWeight: fontWeight),
  );
}

Text whiteText(
  String label,
  double fontSize, {
  TextAlign? textAlign,
  FontWeight? fontWeight = FontWeight.w400,
  TextOverflow? textOverflow,
}) {
  return Text(
    label,
    textAlign: textAlign,
    style: TextStyle(
        fontFamily: 'Lato',
        overflow: textOverflow,
        color: Colors.white,
        fontSize: fontSize,
        fontWeight: fontWeight),
  );
}

Text greyText(
  String label,
  double fontSize, {
  TextAlign? textAlign,
  FontWeight? fontWeight = FontWeight.w400,
  TextOverflow? textOverflow,
}) {
  return Text(
    label,
    textAlign: textAlign,
    style: TextStyle(
        fontFamily: 'Lato',
        overflow: textOverflow,
        color: const Color(0xFFC8C8C8),
        fontSize: fontSize,
        fontWeight: fontWeight),
  );
}
