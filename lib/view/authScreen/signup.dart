import 'package:criconet/res/app_color.dart';
import 'package:criconet/res/components/roundedbutton.dart';
import 'package:criconet/res/string.dart';
import 'package:criconet/utils/routes/routes_name.dart';
import 'package:criconet/utils/utils.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<StatefulWidget> createState() => _signUpViewState();
}

class _signUpViewState extends State<SignUpView> {
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
  String _selectedOption = "";
  bool _isChecked = false;

  @override
  void dispose() {
    // Clean up the FocusNode when the widget is disposed
    _emailIdFocus.dispose();
    super.dispose();
  }

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
                    Strings.startYourJourney,
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
                      controller: _nameTextController,
                      cursorColor: AppColors.errorColor,
                      focusNode: _nameFocus,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 15.0),
                          filled: true,
                          fillColor: const Color(0xFFEAEAEA),
                          hintText: Strings.nameHint,
                          labelText: Strings.nameLabel,
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
                        Utils.focusChange(context, _nameFocus, _ageFocus);
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 0),
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      controller: _ageTextController,
                      cursorColor: AppColors.errorColor,
                      focusNode: _ageFocus,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 15.0),
                          filled: true,
                          fillColor: const Color(0xFFEAEAEA),
                          hintText: Strings.ageHint,
                          labelText: Strings.ageLabel,
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
                        Utils.focusChange(context, _ageFocus, _phoneFocus);
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 0),
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      controller: _phoneTextController,
                      cursorColor: AppColors.errorColor,
                      focusNode: _phoneFocus,
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 15.0),
                          filled: true,
                          fillColor: const Color(0xFFEAEAEA),
                          hintText: Strings.phoneHint,
                          labelText: Strings.phoneLabel,
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
                        Utils.focusChange(context, _phoneFocus, _focusPassword);
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        Strings.gender,
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontFamily: "OpenSansFont",
                            fontWeight: FontWeight.w700,
                            fontSize: 12),
                      ),
                      Radio<String>(
                        value: Strings.female,
                        groupValue: _selectedOption,
                        onChanged: (value) {
                          setState(() {
                            _selectedOption = value!;
                          });
                        },
                      ),
                      const Text(Strings.female,
                          style: TextStyle(
                              color: AppColors.primaryColor,
                              fontFamily: "OpenSansFont",
                              fontWeight: FontWeight.w700,
                              fontSize: 12)),
                      Radio<String>(
                        value: Strings.male,
                        groupValue: _selectedOption,
                        onChanged: (value) {
                          setState(() {
                            _selectedOption = value!;
                          });
                        },
                      ),
                      const Text(Strings.male,
                          style: TextStyle(
                              color: AppColors.primaryColor,
                              fontFamily: "OpenSansFont",
                              fontWeight: FontWeight.w700,
                              fontSize: 12)),
                    ],
                  ),
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
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 0),
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      controller: _confirmpasswordTextController,
                      focusNode: _focusConfirmPassword,
                      cursorColor: AppColors.errorColor,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 15.0),
                          filled: true,
                          fillColor: const Color(0xFFEAEAEA),
                          hintText: Strings.conPassword,
                          labelText: Strings.conPassword,
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
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                        tristate: false,
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                      ),
                      const Text(Strings.terms,
                          style: TextStyle(
                              color: AppColors.hintColor,
                              fontFamily: "OpenSansFont",
                              fontWeight: FontWeight.w700,
                              fontSize: 12)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  RoundedButton(
                    text: Strings.register,
                    onPressed: () {
                      if (_emailTextController.text.isEmpty) {
                        Utils.flushBarErrorMessage(
                            "Email can't be empty!", context);
                      } else if (!Utils.isEmailValidate(
                          _emailTextController.text.toString())) {
                        Utils.flushBarErrorMessage(
                            "Enter Valid EmailId!", context);
                      } else if (_nameTextController.text.isEmpty) {
                        Utils.flushBarErrorMessage(
                            "UserName can't be empty!", context);
                      } else if (_ageTextController.text.isEmpty) {
                        Utils.flushBarErrorMessage(
                            "Enter your age !", context);
                      } else if (!Utils.isValidPhone(
                          _phoneTextController.text.toString())) {
                        Utils.flushBarErrorMessage(
                            "Enter Valid Phone Number !", context);
                      } else if (_passwordTextController.text
                              .toString()
                              .length <
                          6) {
                        Utils.flushBarErrorMessage(
                            "Password at least 6 characters!", context);
                      } else if (_confirmpasswordTextController.text
                              .toString()
                              .length <
                          6) {
                        Utils.flushBarErrorMessage(
                            "Password at least 6 characters!", context);
                      } else if (!Utils.isPasswordMatch(
                          _passwordTextController.text.toString(),
                          _confirmpasswordTextController.text.toString())) {
                        Utils.flushBarErrorMessage(
                            "Password must be same as above!", context);
                      } else {
                        Navigator.pushNamed(context, RoutesName.selectPlayer);
                      }
                    },
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: SizedBox(
                      child: Column(
                        children: [
                          const Text(Strings.alreadyHaveAnAccount,
                              style: TextStyle(
                                  color: AppColors.blueIntroColor,
                                  fontFamily: "OpenSansFont",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12)),
                          InkWell(
                            child: const Text(Strings.login,
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontFamily: "OpenSansFont",
                                    fontWeight: FontWeight.w900,
                                    fontSize: 16)),
                            onTap: () {
                              Navigator.pushNamed(context, RoutesName.login);
                            },
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
