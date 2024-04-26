import 'package:criconet/res/app_color.dart';
import 'package:flutter/material.dart';

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.illustration,
    required this.title,
    required this.text,
  });

  final String illustration, title, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(illustration),
          ),
        ),
        const SizedBox(height: 16),
        Text(title,
            style: const TextStyle(
                fontFamily: "PaytoneFont",
                fontWeight: FontWeight.w600,
                fontSize: 27,
                color: AppColors.primaryColor600)),
        const SizedBox(height: 8),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 0,horizontal: 15), // Adjust the value as needed
          child: Text(
            text,
            style: const TextStyle(
                fontFamily: "OpenSansFont",
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: AppColors.blueIntroColor),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
