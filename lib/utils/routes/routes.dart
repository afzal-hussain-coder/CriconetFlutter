import 'package:criconet/utils/routes/routes_name.dart';
import 'package:criconet/view/Screen/ecoaching.dart';
import 'package:criconet/view/Screen/homeview.dart';
import 'package:criconet/view/Screen/mainview.dart';
import 'package:criconet/view/authScreen/forgot.dart';
import 'package:criconet/view/authScreen/loginScreen.dart';
import 'package:criconet/view/authScreen/selectplayer.dart';
import 'package:criconet/view/authScreen/signup.dart';
import 'package:criconet/view/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(builder: (context) => SplashView());

      case RoutesName.signUp:
        return PageTransition(
          child: const SignUpView(),
          type: PageTransitionType.bottomToTop,
          settings: settings,
        );

      case RoutesName.login:
        return PageTransition(
          child: LoginView(),
          type: PageTransitionType.bottomToTop,
          settings: settings,
        );
      case RoutesName.forgotPassword:
        return PageTransition(
          child: ForgotPasswordView(),
          type: PageTransitionType.bottomToTop,
          settings: settings,
        );
      case RoutesName.selectPlayer:
        return PageTransition(
          child: SelectPlayerView(),
          type: PageTransitionType.bottomToTop,
          settings: settings,
        );
      case RoutesName.mainView:
        return PageTransition(
          child: MainView(),
          type: PageTransitionType.bottomToTop,
          settings: settings,
        );
      case RoutesName.homeView:
        return PageTransition(
          child: HomeView(),
          type: PageTransitionType.bottomToTop,
          settings: settings,
        );
      case RoutesName.coachingView:
        return PageTransition(
          child: CoachingView(),
          type: PageTransitionType.bottomToTop,
          settings: settings,
        );

      // case RoutesName.loginScreen:
      //   return PageTransition(
      //     child: LoginView(),
      //     type: PageTransitionType.bottomToTop,
      //     settings: settings,
      //   );

      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(
                body: Center(
              child: Text("No Routes Define"),
            ));
          },
        );
    }
  }
}
