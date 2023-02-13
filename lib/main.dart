// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, equal_keys_in_map, unused_import
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project_my_own_talki/Abdo_Screen/ChatWallPaperScreen/chatwallpaper_screen.dart';
import 'package:graduation_project_my_own_talki/Ahmed_Screens/Sign%20In.dart';
import 'package:graduation_project_my_own_talki/Ahmed_Screens/my_theme.dart';
void main() {
  runApp(Home_page());
}

class Home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            theme: MyThemeData.lightTheme,
            debugShowCheckedModeBanner: false,
            initialRoute:
            //ChatWallPaperScreen.route_ChatWallPaperScreen,
            Sign_In.Route_Sign_In,
            routes: {
              ChatWallPaperScreen.route_ChatWallPaperScreen:(c)=>ChatWallPaperScreen(),
              Sign_In.Route_Sign_In:(c)=>Sign_In(),
            },
          );
        });
  }
}
