import 'package:criconet/res/app_color.dart';
import 'package:criconet/res/string.dart';
import 'package:criconet/view/Screen/academyview.dart';
import 'package:criconet/view/Screen/ecoaching.dart';
import 'package:criconet/view/Screen/homeview.dart';
import 'package:criconet/view/Screen/streamingview.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _stateMainView();
}

class _stateMainView extends State<MainView> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeView(),
    CoachingView(),
    StreamingView(),
    AcademyView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: AppColors.whiteColor,
        color: AppColors.blueIntroColor,
        buttonBackgroundColor: AppColors.whiteColor,
        // Customize as needed
        items: <Widget>[
          _buildNavItem('assets/images/e_home.png', Strings.e_Pavilion, 0),
          _buildNavItem('assets/images/e_coaching.png', Strings.e_Coaching, 1),
          _buildNavItem(
              'assets/images/e_streaming.png', Strings.e_Streaming, 2),
          _buildNavItem(
              'assets/images/e_acdemyfilled.png', Strings.e_Academy, 3),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }

  Widget _buildNavItem(String assetPath, String label, int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          if (_selectedIndex == index)
            Image.asset(
              "assets/images/ball_icon.png",
              width: 50,
              height: 50,
            )
          else
            Image.asset(
              assetPath,
              width: 30,
              height: 30,
            ),
          const SizedBox(height: 4),
          if (_selectedIndex != index) // Show label only if it's not selected
            Text(
              label,
              style: const TextStyle(
                  fontSize: 14,
                  fontFamily: "InterFont",
                  fontWeight: FontWeight.w300,
                  color: AppColors.indicatorSelectorColor),
            ),
        ],
      ),
    );
  }
}
