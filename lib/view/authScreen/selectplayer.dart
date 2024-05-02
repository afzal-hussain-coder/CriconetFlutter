import 'package:criconet/res/app_color.dart';
import 'package:criconet/res/components/playerbutton.dart';
import 'package:criconet/res/components/roundedbutton.dart';
import 'package:criconet/res/string.dart';
import 'package:flutter/material.dart';

class SelectPlayerView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SelectPlayerViewState();
}

class _SelectPlayerViewState extends State<SelectPlayerView> {
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
                    Strings.iam,
                    style: TextStyle(
                        fontFamily: "PaytoneFont",
                        fontSize: 25,
                        color: AppColors.blueIntroColor),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  PlayerButton(
                    text: Strings.player,
                    onPressed: () {
                      //Navigator.pushNamed(context, RoutesName.signUp);
                    },
                  ),
                  const SizedBox(height: 30),
                  PlayerButton(
                    text: Strings.coach,
                    onPressed: () {
                      //Navigator.pushNamed(context, RoutesName.signUp);
                    },
                  ),
                  const SizedBox(height: 30),
                  PlayerButton(
                    text: Strings.academy,
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
