import 'package:criconet/res/app_color.dart';
import 'package:criconet/res/components/roundedbutton.dart';
import 'package:criconet/res/string.dart';
import 'package:flutter/material.dart';

class ForgotPasswordView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPasswordView> {
  FocusNode _focusNode = FocusNode();
  final TextEditingController _otpTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background_theme.png'),
                  fit: BoxFit.fill)),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Icon(Icons.arrow_back,color: AppColors.primaryColor,)),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SizedBox(
                      width: 250,
                      height: 250,
                      child: Image(
                          image: AssetImage(
                              'assets/images/criconetplatform.png'))),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    Strings.verifyOtp,
                    style: TextStyle(
                        fontFamily: "PaytoneFont",
                        fontSize: 25,
                        color: AppColors.blueIntroColor),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 0),
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      controller: _otpTextController,
                      cursorColor: AppColors.primaryColor,
                      focusNode: _focusNode,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 15.0),
                          filled: true,
                          fillColor: const Color(0xFFEAEAEA),
                          hintText: Strings.enterOtp,
                          labelText: Strings.enterOtp,
                          labelStyle: MaterialStateTextStyle.resolveWith(
                              (Set<MaterialState> states) {
                            final Color color =
                                states.contains(MaterialState.focused)
                                    ? AppColors.primaryColor
                                    : AppColors.hintColor;
                            return TextStyle(
                                color: color,
                                fontFamily: "OpenSansFont",
                                fontSize: 12,
                                fontWeight: FontWeight.w800);
                          }),
                          hintStyle: const TextStyle(
                              fontFamily: "OpenSansFont",
                              fontSize: 12,
                              fontWeight: FontWeight.w800),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: AppColors.primaryColor, width: 2.0),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xFFEEEEEE), width: 2.0),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: AppColors.errorColor, width: 2.0),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: AppColors.errorColor, width: 2.0),
                            borderRadius: BorderRadius.circular(50.0),
                          )),
                      onFieldSubmitted: (value) {},
                    ),
                  ),
                  const SizedBox(height: 10),
                  RoundedButton(
                    text: Strings.submit,
                    onPressed: () {
                      //Navigator.pushNamed(context, RoutesName.signUp);
                    },
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
