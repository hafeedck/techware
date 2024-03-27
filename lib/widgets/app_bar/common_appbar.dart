import 'package:flutter/material.dart';
import 'package:machine_test/widgets/style/color.dart';

class CommonAppbar extends StatelessWidget implements PreferredSize {
  final String label;
  final Function onpress;
  final bool? visible;
  final Function? onClick;
  final Function? onExcel;
  const CommonAppbar({
    Key? key,
    required this.label,
    required this.onpress,
    this.visible = false,
    this.onClick,
    this.onExcel,
  }) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(70);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors().primaryColor,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(25),
        ),
      ),
      leadingWidth: 40,
      title: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 17,
        ),
      ),
    );
  }

  @override
  Widget get child => throw UnimplementedError();
}
