import 'package:criconet/res/app_color.dart';
import 'package:criconet/res/components/drawerheadercomponent.dart';
import 'package:criconet/res/string.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeViewSate();
}

class _HomeViewSate extends State<HomeView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  FocusNode _focusNode = FocusNode();
  final TextEditingController _postTextController = TextEditingController();
  String selectedPrivacyPostValue = Strings.Everyone;
  bool isAddPostViewVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: const Text(
            Strings.e_Pavilion,
            style: TextStyle(
                fontFamily: "PaytoneFont",
                fontWeight: FontWeight.w400,
                fontSize: 24,
                color: AppColors.primaryColor),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Image.asset(
              'assets/images/add_post.png',
              width: 24,
              height: 24,
            ),
            // Adjust the path as needed
            onPressed: () {
              setState(() {
                isAddPostViewVisible = !isAddPostViewVisible;
              });
              // Handle edit button press
            },
          ),
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
                  flex: 2,
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
                            Strings.super_6,
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
                              child: Text(Strings.teams,
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
                              child: Text(Strings.albums,
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
                              child: Text(Strings.my_blog,
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
                              child: Text(Strings.pages,
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
                              child: Text(Strings.saved_posts,
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
                    flex: 1,
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
                                    image:
                                        AssetImage("assets/images/Insta.png")),
                                SizedBox(
                                  width: 5,
                                ),
                                Image(
                                    image: AssetImage(
                                        "assets/images/Youtube.png")),
                                SizedBox(
                                  width: 5,
                                ),
                                Image(
                                    image: AssetImage(
                                        "assets/images/linkend.png")),
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
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Visibility(
                visible: isAddPostViewVisible,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, bottom: 20, right: 20, top: 20),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/emoji_ball.png',
                              // Path to left image
                              width: 50,
                              height: 50,
                            ),
                            // Adjust the space between left image and TextFormField
                            Expanded(
                              child: TextFormField(
                                style: const TextStyle(
                                    color: AppColors.blueIntroColor,
                                    fontFamily: "OpenSansFont",
                                    fontSize: 14),
                                decoration: const InputDecoration(
                                  hintText: Strings.share_your_thoughts,
                                  hintStyle: TextStyle(
                                      color: AppColors.blueIntroColor,
                                      fontFamily: "OpenSansFont",
                                      fontSize: 14),
                                  border: InputBorder.none,
                                  // No border
                                  enabledBorder: InputBorder.none,
                                ),
                                maxLines: 2,
                              ),
                            ),
                            const SizedBox(width: 10),
                            // Adjust the space between TextFormField and right image
                            Image.asset(
                              'assets/images/profile_avtar.png',
                              // Path to right image
                              width: 50,
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width /
                              3, // Width of the rectangle
                          height: 50, // Height of the rectangle
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.shadowColor, // Border color
                              width: 2.0, // Border width
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                  image: AssetImage(
                                      "assets/images/album_icon.png")),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                Strings.Photos,
                                style: TextStyle(
                                    fontFamily: "OpenSansFont",
                                    color: AppColors.primaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width /
                              3, // Width of the rectangle
                          height: 50, // Height of the rectangle
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.shadowColor, // Border color
                              width: 2.0, // Border width
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                  image: AssetImage(
                                      "assets/images/video_icon.png")),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                Strings.Videos,
                                style: TextStyle(
                                    fontFamily: "OpenSansFont",
                                    color: AppColors.primaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width /
                              3, // Width of the rectangle
                          height: 50, // Height of the rectangle
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.shadowColor, // Border color
                              width: 2.0, // Border width
                            ),
                          ),
                          child: Center(
                            child: DropdownButton<String>(
                              style: const TextStyle(
                                  fontFamily: "OpenSansFont",
                                  color: AppColors.primaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                              icon: const Icon(Icons.arrow_drop_down,
                                  color: AppColors.primaryColor),
                              // Set color of the arrow
                              underline: Container(),
                              value: selectedPrivacyPostValue,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedPrivacyPostValue = newValue!;
                                });
                              },
                              items: <String>[
                                Strings.Everyone,
                                Strings.onlyme,
                                Strings.follower,
                                Strings.following
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
