import 'package:flutter/material.dart';

multiColorText(String text1, text2) {
  return RichText(
    text: TextSpan(
      // style: TextStyle(
      //   fontSize: 18.0,
      //   color: Colors.black,
      // ),
      children: <TextSpan>[
        TextSpan(
          text: text1,
          style: const TextStyle(
              color: Color(0xFF4A4949),
              fontSize: 12,
              fontWeight: FontWeight.w500),
        ),
        TextSpan(
          text: text2,
          style: const TextStyle(
              color: Color(0xFFE94B55),
              fontSize: 12,
              fontWeight: FontWeight.w800),
        ),
      ],
    ),
  );
}
