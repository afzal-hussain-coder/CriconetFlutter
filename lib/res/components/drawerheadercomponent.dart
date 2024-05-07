import 'package:criconet/res/app_color.dart';
import 'package:flutter/material.dart';

class DrawerHeaderView extends StatelessWidget {
  final VoidCallback onPressed;

  const DrawerHeaderView({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 185,
      width: double.infinity,
      child: DrawerHeader(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0)),
          color: AppColors.primaryColor,
          image: DecorationImage(
            image: AssetImage('assets/images/drawerheaderImage.png'),
            // Set your image path here
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child:
                      Container(), // Empty container to occupy remaining space
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: onPressed,
                    child: Image.asset(
                      'assets/images/heade_cross_icon.png',
                      width: 20, // Adjust width as needed
                      height: 20, // Adjust height as needed
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/profile_avtar.png'),
                      radius: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nimesh Sharma",
                          style: TextStyle(
                              fontFamily: "OpenSansFont",
                              fontSize: 14,
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.w200),
                        ),
                        Text(
                          "XYZ Academy",
                          style: TextStyle(
                              fontFamily: "OpenSansFont",
                              fontSize: 12,
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.w100),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("assets/images/call_icon.png")),
                    SizedBox(
                      width: 7,
                    ),
                    Image(
                        image: AssetImage("assets/images/settings_alert.png")),
                    SizedBox(
                      width: 7,
                    ),
                    Image(image: AssetImage("assets/images/logout.png")),
                  ],
                )
              ],
            )
          ],
        ), // You can add child widgets if needed
      ),
    );
  }
}
//
// class _stateDrawerHeaderView extends State<DrawerHeaderView> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 175,
//       width: double.infinity,
//       child: DrawerHeader(
//         decoration: const BoxDecoration(
//           borderRadius: BorderRadius.only(
//               bottomRight: Radius.circular(20.0),
//               bottomLeft: Radius.circular(20.0)),
//           color: AppColors.primaryColor,
//           image: DecorationImage(
//             image: AssetImage('assets/images/drawerheaderImage.png'),
//             // Set your image path here
//             fit: BoxFit.fill,
//           ),
//         ),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Expanded(
//                   child:
//                       Container(), // Empty container to occupy remaining space
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: InkWell(
//                     child: Image.asset(
//                       'assets/images/heade_cross_icon.png',
//                       width: 20, // Adjust width as needed
//                       height: 20, // Adjust height as needed
//                     ),
//                     onTap: onPressed,
//                   ),
//                 ),
//               ],
//             ),
//             const Row(
//               children: [
//                 CircleAvatar(
//                   backgroundImage:
//                       AssetImage('assets/images/profile_avtar.png'),
//                   radius: 30,
//                 ),
//                 SizedBox(
//                   width: 4,
//                 ),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Nimesh Sharma",
//                       style: TextStyle(
//                           fontFamily: "OpenSansFont",
//                           fontSize: 14,
//                           color: AppColors.whiteColor,
//                           fontWeight: FontWeight.w200),
//                     ),
//                     Text(
//                       "XYZ Academy",
//                       style: TextStyle(
//                           fontFamily: "OpenSansFont",
//                           fontSize: 12,
//                           color: AppColors.whiteColor,
//                           fontWeight: FontWeight.w100),
//                     ),
//                   ],
//                 )
//               ],
//             )
//           ],
//         ), // You can add child widgets if needed
//       ),
//     );
//   }
// }
