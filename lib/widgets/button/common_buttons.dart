import 'package:flutter/material.dart';
import 'package:machine_test/widgets/style/color.dart';


class CommonButton extends StatelessWidget {
  final String text;
  final Function? onPressed;
  final bool? isLoading;
  const CommonButton(
      {super.key,
      required this.text,
      this.onPressed,
      this.isLoading});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .068,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor:
              MaterialStateProperty.all<Color>(AppColors().primaryColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
              side:  BorderSide(color: AppColors().primaryColor),
            ),
          ),
        ),
        onPressed: () {
          onPressed!();
        },
        child: isLoading == true
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              )
            : Text(
                text,
                style: const TextStyle(fontSize: 18, color: Colors.white),
              ),
      ),
    );
  }
}

class CommonButtonWithArrow extends StatelessWidget {
  final String text;
  final Function? onPressed;
  const CommonButtonWithArrow({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .065,
      width: MediaQuery.of(context).size.width * .80,
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor:
              MaterialStateProperty.all<Color>(AppColors().primaryColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
              side:  BorderSide(color: AppColors().primaryColor),
            ),
          ),
        ),
        onPressed: () {
          onPressed!();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              width: 5,
            ),
            const Icon(
              Icons.east,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
