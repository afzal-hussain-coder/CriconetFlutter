import 'package:criconet/res/app_color.dart';
import 'package:flutter/material.dart';

class PlayerButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const PlayerButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0, // Shadow for the button itself
        child: Container(
          width: 150,
          height: 50,
          //padding: EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              image: const DecorationImage(
                  image: AssetImage('assets/images/button_bg.png'),
                  fit: BoxFit.fill)),
          child: Center(
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
        ),
      ),
    );
  }
}