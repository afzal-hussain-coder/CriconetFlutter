import 'package:criconet/res/app_color.dart';
import 'package:criconet/res/components/drawerheadercomponent.dart';
import 'package:criconet/res/string.dart';
import 'package:flutter/material.dart';

class AcademyView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _stateAcademyView();
}

class _stateAcademyView extends State<AcademyView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text(
          Strings.e_Academy,
          style: TextStyle(
              fontFamily: "PaytoneFont",
              fontWeight: FontWeight.w400,
              fontSize: 24,
              color: AppColors.primaryColor),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Image.asset(
              'assets/images/navigation_draweer.png',
              width: 40,
              height: 40,
            ),
            // Change this to the desired icon
            onPressed: () {
              _scaffoldKey.currentState!.openEndDrawer();
            },
          ),
        ],
      ),
      endDrawer: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Drawer(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                  bottomLeft: Radius.circular(0),
                  topLeft: Radius.circular(0)),
            ),
            child: Column(children: <Widget>[
              Expanded(
                flex: 4,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/background_theme.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      DrawerHeaderView(
                        onPressed: () {
                          _scaffoldKey.currentState!.closeEndDrawer();
                        },
                      ),
                      ListTile(
                        title: const Center(
                            child: Text(
                          Strings.join_the_session,
                          style: TextStyle(
                              fontFamily: "OpenSansFont",
                              color: AppColors.blueIntroColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        )),
                        onTap: () {
                          // Update the UI based on the item selected
                          // Close the drawer
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: const Center(
                            child: Text(Strings.upcoming_sessions,
                                style: TextStyle(
                                    fontFamily: "OpenSansFont",
                                    color: AppColors.blueIntroColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700))),
                        onTap: () {
                          // Update the UI based on the item selected
                          // Close the drawer
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: const Center(
                            child: Text(Strings.past_sessions,
                                style: TextStyle(
                                    fontFamily: "OpenSansFont",
                                    color: AppColors.blueIntroColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700))),
                        onTap: () {
                          // Update the UI based on the item selected
                          // Close the drawer
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: const Center(
                            child: Text(Strings.manage_academy,
                                style: TextStyle(
                                    fontFamily: "OpenSansFont",
                                    color: AppColors.blueIntroColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700))),
                        onTap: () {
                          // Update the UI based on the item selected
                          // Close the drawer
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: const Center(
                            child: Text(Strings.manage_attendance,
                                style: TextStyle(
                                    fontFamily: "OpenSansFont",
                                    color: AppColors.blueIntroColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700))),
                        onTap: () {
                          // Update the UI based on the item selected
                          // Close the drawer
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: const Center(
                            child: Text(Strings.manage_students,
                                style: TextStyle(
                                    fontFamily: "OpenSansFont",
                                    color: AppColors.blueIntroColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700))),
                        onTap: () {
                          // Update the UI based on the item selected
                          // Close the drawer
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: const Center(
                            child: Text(Strings.academy_details,
                                style: TextStyle(
                                    fontFamily: "OpenSansFont",
                                    color: AppColors.blueIntroColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700))),
                        onTap: () {
                          // Update the UI based on the item selected
                          // Close the drawer
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: const Center(
                            child: Text(Strings.watch_nets,
                                style: TextStyle(
                                    fontFamily: "OpenSansFont",
                                    color: AppColors.blueIntroColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700))),
                        onTap: () {
                          // Update the UI based on the item selected
                          // Close the drawer
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: const Center(
                            child: Text(Strings.training_tips,
                                style: TextStyle(
                                    fontFamily: "OpenSansFont",
                                    color: AppColors.blueIntroColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700))),
                        onTap: () {
                          // Update the UI based on the item selected
                          // Close the drawer
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: const Center(
                            child: Text(Strings.player_details,
                                style: TextStyle(
                                    fontFamily: "OpenSansFont",
                                    color: AppColors.blueIntroColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700))),
                        onTap: () {
                          // Update the UI based on the item selected
                          // Close the drawer
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: const Center(
                            child: Text(Strings.schedule_online_session,
                                style: TextStyle(
                                    fontFamily: "OpenSansFont",
                                    color: AppColors.blueIntroColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700))),
                        onTap: () {
                          // Update the UI based on the item selected
                          // Close the drawer
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              // ),
              Expanded(
                  flex: 2,
                  child: Container(
                    color: AppColors.blueIntroColor,
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: <Widget>[
                        ListTile(
                          title: const Center(
                              child: Text(
                            Strings.about_Us,
                            style: TextStyle(
                                fontFamily: "OpenSansFont",
                                color: AppColors.whiteColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          )),
                          onTap: () {
                            // Update the UI based on the item selected
                            // Close the drawer
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: const Center(
                              child: Text(Strings.partner_with_us,
                                  style: TextStyle(
                                      fontFamily: "OpenSansFont",
                                      color: AppColors.whiteColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700))),
                          onTap: () {
                            // Update the UI based on the item selected
                            // Close the drawer
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: const Center(
                              child: Text(Strings.campus_ambassador,
                                  style: TextStyle(
                                      fontFamily: "OpenSansFont",
                                      color: AppColors.whiteColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700))),
                          onTap: () {
                            // Update the UI based on the item selected
                            // Close the drawer
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: const Center(
                              child: Text(Strings.blog,
                                  style: TextStyle(
                                      fontFamily: "OpenSansFont",
                                      color: AppColors.whiteColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700))),
                          onTap: () {
                            // Update the UI based on the item selected
                            // Close the drawer
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: const Center(
                              child: Text(Strings.careers,
                                  style: TextStyle(
                                      fontFamily: "OpenSansFont",
                                      color: AppColors.whiteColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700))),
                          onTap: () {
                            // Update the UI based on the item selected
                            // Close the drawer
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: const Center(
                              child: Text(Strings.faqs,
                                  style: TextStyle(
                                      fontFamily: "OpenSansFont",
                                      color: AppColors.whiteColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700))),
                          onTap: () {
                            // Update the UI based on the item selected
                            // Close the drawer
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: const Center(
                              child: Text(Strings.media_release,
                                  style: TextStyle(
                                      fontFamily: "OpenSansFont",
                                      color: AppColors.whiteColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700))),
                          onTap: () {
                            // Update the UI based on the item selected
                            // Close the drawer
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: const Center(
                              child: Text(Strings.notice_board,
                                  style: TextStyle(
                                      fontFamily: "OpenSansFont",
                                      color: AppColors.whiteColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700))),
                          onTap: () {
                            // Update the UI based on the item selected
                            // Close the drawer
                            Navigator.pop(context);
                          },
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(Strings.user_agreement,
                                  style: TextStyle(
                                      fontFamily: "OpenSansFont",
                                      color: AppColors.whiteColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200)),
                              SizedBox(
                                height: 14, // Height of the vertical line
                                child: VerticalDivider(
                                  color: AppColors.whiteColor,
                                  // Color of the vertical line
                                  thickness:
                                      1, // Thickness of the vertical line
                                ),
                              ),
                              Text(Strings.terms_of_use,
                                  style: TextStyle(
                                      fontFamily: "OpenSansFont",
                                      color: AppColors.whiteColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200)),
                              SizedBox(
                                height: 14, // Height of the vertical line
                                child: VerticalDivider(
                                  color: AppColors.whiteColor,
                                  // Color of the vertical line
                                  thickness:
                                      1, // Thickness of the vertical line
                                ),
                              ),
                              Text(Strings.privacy_policy,
                                  style: TextStyle(
                                      fontFamily: "OpenSansFont",
                                      color: AppColors.whiteColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200))
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                  image: AssetImage(
                                      "assets/images/facebook1.png")),
                              SizedBox(
                                width: 5,
                              ),
                              Image(
                                  image: AssetImage("assets/images/Insta.png")),
                              SizedBox(
                                width: 5,
                              ),
                              Image(
                                  image:
                                      AssetImage("assets/images/Youtube.png")),
                              SizedBox(
                                width: 5,
                              ),
                              Image(
                                  image:
                                      AssetImage("assets/images/linkend.png")),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 150,
                        )
                      ],
                    ),
                  )),
            ])),
      ),
      body: const Center(
        child: Text('Main Content'),
      ),
    );
  }
}
