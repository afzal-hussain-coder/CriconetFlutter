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
        centerTitle: true,
        leading: IconButton(
          icon: Image.asset(
            'assets/images/add_post.png',
            width: 24,
            height: 24,
          ),
          // Adjust the path as needed
          onPressed: () {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  color: Colors.blue, // First container color
                  child: Center(
                    child:
                        Text("First Section"), // Content of the first section
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green, // Second container color
                  child: Center(
                    child:
                        Text("Second Section"), // Content of the second section
                  ),
                ),
              ),
              // Add more Expanded widgets for additional sections as needed
            ],
          ),

          /*ListView(
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
          )*/
        ),
      ),
      body: const Center(
        child: Text('Main Content'),
      ),
    );
  }
}
