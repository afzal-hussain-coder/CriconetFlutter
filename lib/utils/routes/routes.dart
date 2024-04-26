import 'package:criconet/utils/routes/routes_name.dart';
import 'package:criconet/view/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(builder: (context) => SplashView());

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
