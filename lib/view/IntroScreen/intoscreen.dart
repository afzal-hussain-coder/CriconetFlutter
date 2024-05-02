import 'package:criconet/res/components/roundedbutton.dart';
import 'package:criconet/utils/routes/routes_name.dart';
import 'package:criconet/view/IntroScreen/animateddot.dart';
import 'package:criconet/view/IntroScreen/onboardcontent.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<StatefulWidget> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int _selctedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background_theme.png'),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            const Spacer(flex: 2),
            SizedBox(
              height: 500,
              child: PageView.builder(
                itemCount: demoData.length,
                onPageChanged: (value) {
                  setState(() {
                    _selctedIndex = value;
                  });
                },
                itemBuilder: (context, index) {
                  return OnboardContent(
                    illustration: demoData[index]['illustration'],
                    title: demoData[index]['title'],
                    text: demoData[index]['text'],
                  );
                },
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                demoData.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: AnimatedDot(isActive: _selctedIndex == index),
                ),
              ),
            ),
            const Spacer(flex: 2),
            RoundedButton(
              text: "Get Started",
              onPressed: (){
                Navigator.pushNamed(context, RoutesName.signUp);
              },
            ),
            const Spacer(),

            // TODO: Button
          ],
        ),
      )),
    );
  }
}

List<Map<String, dynamic>> demoData = [
  {
    "illustration": "assets/images/intro1.png",
    "title": "Watch.Learn.Bond.",
    "text": "The best hangout for cricket lovers,\n right on your phone.",
  },
  {
    "illustration": "assets/images/intro2.png",
    "title": "Enjoy Live Streaming",
    "text":
        "The stream your local and domestic leagues.club level tournaments live on Criconet.",
  },
  {
    "illustration": "assets/images/intro3.png",
    "title": "Find Best Academies",
    "text":
        "Our academy-led hybrid coaching model connects local talents to the top cricket academies",
  },
];
