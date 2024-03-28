import 'package:flutter/material.dart';
import 'package:machine_test/widgets/style/color.dart';

Future openDialog(
  String title,
  String subTitle,
  BuildContext context, {
  String okRemark = 'Ok',
  String cancelRemark = 'Cancel',
}) async {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        title: Text(
          title,
        ),
        content: subTitle.isEmpty ? null : Text(subTitle),
        actions: [
          OutlinedButton(
            onPressed: () {
              Navigator.pop(
                  context, false); // Return false when Cancel is pressed
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 10)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0))),
            ),
            child: Text(
              cancelRemark,
              style: TextStyle(color: AppColors().primaryColor, fontSize: 15),
            ),
          ),
          const SizedBox(width: 20),
          OutlinedButton(
            onPressed: () {
              Navigator.pop(context, true); // Return true when Ok is pressed
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 10)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0))),
            ),
            child: Text(
              okRemark,
              style: TextStyle(color: AppColors().primaryColor, fontSize: 15),
            ),
          ),
        ],
      );
    },
  );
}
