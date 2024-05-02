import 'package:criconet/res/app_color.dart';
import 'package:flutter/material.dart';

class AnimatedDot extends StatelessWidget {
const AnimatedDot({
super.key,
required this.isActive,
});

final bool isActive;

@override
Widget build(BuildContext context) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 300),
    height: 15,
    width: isActive ? 25 : 15,
    decoration: BoxDecoration(
      color:
      isActive ? AppColors.indicatorSelectorColor : AppColors.primaryColor,
      borderRadius: const BorderRadius.all(Radius.circular(15)),
    ),
  );
}
}