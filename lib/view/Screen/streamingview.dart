import 'package:criconet/res/app_color.dart';
import 'package:criconet/res/components/drawerheadercomponent.dart';
import 'package:criconet/res/string.dart';
import 'package:flutter/material.dart';

class StreamingView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _stateStreamingView();
}

class _stateStreamingView extends State<StreamingView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text(
          Strings.e_Streaming,
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
        width: double.infinity,
        height: double.infinity,
        child: Drawer(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                  bottomLeft: Radius.circular(0),
                  topLeft: Radius.circular(0)),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  height: MediaQuery.of(context).size.height / 2,
                  child: Container(
                    color: Colors.blue,
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: <Widget>[
                        DrawerHeaderView(
                          onPressed: () {
                            _scaffoldKey.currentState!.closeEndDrawer();
                          },
                        ),
                        ListTile(
                          title: const Text('Item 1'),
                          onTap: () {
                            // Update the UI based on the item selected
                            // Close the drawer
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: const Text('Item 2'),
                          onTap: () {
                            // Update the UI based on the item selected
                            // Close the drawer
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ), // First part color
                    // Your first part content here
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  height: MediaQuery.of(context).size.height / 2,
                  child: Container(
                    color: Colors.green, // Second part color
                    // Your second part content here
                  ),
                ),
              ],
            )
        ),
      ),
      body: const Center(
        child: Text('Main Content'),
      ),
    );
  }
}
