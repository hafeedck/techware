import 'package:flutter/material.dart';

class MultiLineTextField extends StatelessWidget {
  final String hintText;
  final Function? onChanged;
  final TextEditingController? controller;
  final FormFieldValidator? validator;
  const MultiLineTextField(
      {super.key,
      required this.hintText,
      this.onChanged,
      this.controller,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: false,
        style: const TextStyle(fontSize: 13),
        onChanged: onChanged == null
            ? null
            : (value) {
                onChanged!(value);
              },
        maxLines: null,
        controller: controller,
        minLines: null,
        expands: true,
        validator: validator,
        // textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.top,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Theme.of(context).hintColor,
            fontSize: 15,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade200,
            ),
            borderRadius: BorderRadius.circular(6.0),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade200,
            ),
            borderRadius: BorderRadius.circular(6.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade200,
            ),
            borderRadius: BorderRadius.circular(6.0),
          ),
        ));
  }
}
