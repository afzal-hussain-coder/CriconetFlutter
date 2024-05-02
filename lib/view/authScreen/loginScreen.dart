import 'package:criconet/res/app_color.dart';
import 'package:criconet/res/components/roundedbutton.dart';
import 'package:criconet/res/string.dart';
import 'package:criconet/utils/routes/routes_name.dart';
import 'package:criconet/utils/utils.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _loginViewState();
}

class _loginViewState extends State<LoginView> {
  final FocusNode _emailIdFocus = FocusNode();
  final FocusNode _nameFocus = FocusNode();
  final FocusNode _ageFocus = FocusNode();
  final FocusNode _phoneFocus = FocusNode();
  final FocusNode _focusPassword = FocusNode();
  final FocusNode _focusConfirmPassword = FocusNode();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _nameTextController = TextEditingController();
  final TextEditingController _ageTextController = TextEditingController();
  final TextEditingController _phoneTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _confirmpasswordTextController =
      TextEditingController();

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
                    Strings.welcomeBack,
                    style: TextStyle(
                        fontFamily: "PaytoneFont",
                        fontSize: 25,
                        color: AppColors.blueIntroColor),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 50,
                        // constraints: BoxConstraints(
                        //   maxWidth: MediaQuery.of(context).size.width * 0.2,
                        // ),
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(
                              25), // Adjust the value to change the roundness
                        ),
                        child: const Row(
                          children: [
                            Image(
                              image: AssetImage('assets/images/google.png'),
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              Strings.loginWithGoogle,
                              style: TextStyle(
                                  fontFamily: "OpenSansFont",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.blueIntroColor),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 50,
                        // constraints: BoxConstraints(
                        //   maxWidth: MediaQuery.of(context).size.width * 0.2,
                        // ),
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(
                              25), // Adjust the value to change the roundness
                        ),
                        child: const Row(
                          children: [
                            Image(
                              image: AssetImage('assets/images/facebook.png'),
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              Strings.loginWithFacebook,
                              style: TextStyle(
                                  fontFamily: "OpenSansFont",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.blueIntroColor),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 0),
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      controller: _emailTextController,
                      cursorColor: AppColors.primaryColor,
                      focusNode: _emailIdFocus,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 15.0),
                          filled: true,
                          fillColor: const Color(0xFFEAEAEA),
                          hintText: Strings.emailHint,
                          labelText: Strings.emailLabel,
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
                      onFieldSubmitted: (value) {
                        Utils.focusChange(context, _emailIdFocus, _nameFocus);
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 0),
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      controller: _passwordTextController,
                      cursorColor: AppColors.errorColor,
                      focusNode: _focusPassword,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 15.0),
                          filled: true,
                          fillColor: const Color(0xFFEAEAEA),
                          hintText: Strings.password,
                          labelText: Strings.password,
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
                      onFieldSubmitted: (value) {
                        Utils.focusChange(
                            context, _focusPassword, _focusConfirmPassword);
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: const Text(Strings.forgetPassword,
                            //textAlign: TextAlign.end,
                            style: TextStyle(
                                color: AppColors.primaryColor,
                                fontFamily: "OpenSansFont",
                                fontWeight: FontWeight.w900,
                                fontSize: 14)),
                        onTap: () {
                          Navigator.pushNamed(
                              context, RoutesName.forgotPassword);
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  RoundedButton(
                    text: Strings.login,
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesName.selectPlayer);
                    },
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: SizedBox(
                      child: Column(
                        children: [
                          const Text(Strings.doNotHaveAccount,
                              style: TextStyle(
                                  color: AppColors.blueIntroColor,
                                  fontFamily: "OpenSansFont",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12)),
                          InkWell(
                            child: const Text(Strings.register,
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontFamily: "OpenSansFont",
                                    fontWeight: FontWeight.w900,
                                    fontSize: 16)),
                            onTap: () {
                              Navigator.pushNamed(context, RoutesName.signUp);
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(Strings.tearmsAndCookiesStatement,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: AppColors.blueIntroColor,
                                      fontFamily: "OpenSansFont",
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
