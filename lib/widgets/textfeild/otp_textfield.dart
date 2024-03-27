import 'package:flutter/material.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

// ignore: must_be_immutable
class OtpTextfield extends StatelessWidget {
  FormFieldValidator? oncomplete;
  FormFieldValidator? onchange;
  OtpTextfield({super.key, this.oncomplete, this.onchange});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: PinCodeTextField(
        autoFocus: true,
        appContext: context,
        length: 4,
        animationType: AnimationType.fade,
        // textStyle:
        //     TextStyle(color: Get.isDarkMode ? Colors.white : Colors.black),
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(10),
          fieldHeight: 55,
          fieldWidth: 60,
          borderWidth: 1,
          activeColor: const Color(0xFFCACACA),
          selectedColor: const Color(0xFFCACACA),
          activeFillColor: const Color(0xFFCACACA),
          disabledColor: const Color(0xFFCACACA),
          errorBorderColor: const Color(0xFFCACACA),
          inactiveColor: const Color(0xFFCACACA),
          inactiveFillColor: const Color(0xFFCACACA),
          selectedFillColor: const Color(0xFFCACACA),
        ),
        animationDuration: const Duration(milliseconds: 300),
        keyboardType: TextInputType.number,
        // cursorColor: Get.isDarkMode ? Colors.white : Colors.black,
        onCompleted: oncomplete,
        onChanged: onchange,
        beforeTextPaste: (text) {
          //print("Allowing to paste $text");
          return true;
        },
      ),
    );
  }
}
