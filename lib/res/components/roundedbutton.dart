import 'package:criconet/res/app_color.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const RoundedButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(30.0),
      elevation: 5.0, // Shadow for the button itself
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
            image: const DecorationImage(
                image: AssetImage('assets/images/button_bg.png'),
                fit: BoxFit.fill)),
        child: Text(
          text,
          style: const TextStyle(
            color: AppColors.whiteColor,
            fontFamily: "OpenSansFont",
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        ),
    );
  }
}