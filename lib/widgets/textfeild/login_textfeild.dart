
import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final String hintText;
  final bool? isEnable;
  final FormFieldValidator? validator;
  // final IconData? prefixIcon;

  final IconData? suffixIcon;
  final TextInputType? textInputType;
  final bool obscureText;
  final Function? suffixIconClick;
  final TextEditingController? textEditingController;

  const LoginTextField(
      {Key? key,
      this.isEnable,
      this.textInputType,
      this.suffixIconClick,
      // this.prefixIcon,
      this.suffixIcon,
      required this.hintText,
      this.obscureText = false,
      this.textEditingController,
      this.validator})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        textAlign: TextAlign.start,
        validator: validator,

        obscureText: obscureText,
        controller: textEditingController,
        enabled: isEnable ?? true,
        style: const TextStyle(fontSize: 17, letterSpacing: 2.0),
        keyboardType: textInputType ?? TextInputType.text,
        // inputFormatters: <TextInputFormatter>[
        //   FilteringTextInputFormatter.allow(RegExp(r'^[0-9][0-9]*')),
        //   LengthLimitingTextInputFormatter(10),
        // ],
        decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFAAAAAA), // Customize the color of the underline
            ),
          ),
          fillColor: Colors.white,
          // contentPadding: EdgeInsets.symmetric(horizontal: 15),
          hintStyle: const TextStyle(
              color: Color(0xFFA5A5A5),
              fontSize: 16,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w400),
          // filled: true,
          // isDense: true,

          // suffixIcon: InkWell(
          //   onTap: () {
          //     suffixIconClick!();
          //   },
          //   child: suffixIcon,
          // ),

          suffixIcon: suffixIcon == null
              ? null
              : IconButton(
                  onPressed: () => suffixIconClick!(),
                  icon: Icon(
                    suffixIcon,
                    size: 20,
                    color: Colors.grey.withOpacity(.6),
                  ),
                ),

          // suffixIcon: suffixIcon,
          // border: const OutlineInputBorder(
          //   borderRadius: BorderRadius.all(
          //     Radius.circular(10),
          //   ),
          // ),
          hintText: hintText,
        ),
        //   borderSide: BorderSide(color: Colors.grey, width: 0.4),
        // ),
      ),
    );
  }
}
