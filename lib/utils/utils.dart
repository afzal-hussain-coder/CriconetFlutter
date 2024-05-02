import 'dart:io';

import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:criconet/res/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Utils {
  static focusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static flushBarErrorMessage(String message, BuildContext context) {
    showFlushbar(
        context: context,
        flushbar: Flushbar(
          forwardAnimationCurve: Curves.decelerate,
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          padding: EdgeInsets.all(15),
          message: message,
          messageSize: 20,
          borderRadius: BorderRadius.circular(50),
          flushbarPosition: FlushbarPosition.TOP,
          backgroundColor: AppColors.primaryColor600,
          titleColor: AppColors.whiteColor,
          messageColor: AppColors.whiteColor,
          duration: const Duration(seconds: 2),
          reverseAnimationCurve: Curves.easeInOut,
          positionOffset: 20,
          icon: Icon(
            Icons.error,
            size: 20,
            color: Colors.white,
          ),
        )..show(context));
  }

  static flushBarSuccessMessage(String message, BuildContext context) {
    showFlushbar(
        context: context,
        flushbar: Flushbar(
          forwardAnimationCurve: Curves.decelerate,
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          padding: EdgeInsets.all(15),
          message: message,
          messageSize: 20,
          borderRadius: BorderRadius.circular(50),
          flushbarPosition: FlushbarPosition.TOP,
          backgroundColor: AppColors.successColor,
          titleColor: AppColors.whiteColor,
          messageColor: AppColors.whiteColor,
          duration: const Duration(seconds: 2),
          reverseAnimationCurve: Curves.easeInOut,
          positionOffset: 20,
          icon: Icon(
            Icons.done,
            size: 20,
            color: Colors.white,
          ),
        )..show(context));
  }

  // Email validation method
  static bool isEmailValidate(String text) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = new RegExp(p);

    return regExp.hasMatch(text);
  }

  /*Checking the Phone number Validation*/
  static bool isValidPhone(String txt) {
    return (txt.isEmpty || txt.length < 10) ? false : true;
  }

  /*Checking the Password and Confirm Password matching validation*/
  static bool isPasswordMatch(String password, String confirmPasswoird) {
    return confirmPasswoird != password ? false : true;
  }

  /*Checking the short description length max 30*/
  static bool isShortDesLength(String shortDes) {
    return shortDes.length > 30 ? false : true;
  }

  /*Checking the Long description length max 180*/
  static bool isLongDescriptionLength(String shortDes) {
    return shortDes.length > 180 ? false : true;
  }

}
