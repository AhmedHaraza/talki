import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project_my_own_talki/Abdo_Screen/GroupChatScreen/main_group_chat_screen.dart';
import 'package:graduation_project_my_own_talki/Ahmed_Screens/my_theme.dart';
import 'package:graduation_project_my_own_talki/Shimmer.dart';
import 'package:graduation_project_my_own_talki/provider/myprovider.dart';
import 'package:provider/provider.dart';

bool darkmode = false;
void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => myprovider(), child: Home_page()));
}

class Home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          myprovider provider = Provider.of<myprovider>(context);
          return MaterialApp(
            theme: MyThemeData.lightTheme,
            darkTheme: MyThemeData.darktheme,
            themeMode: provider.theme,
            debugShowCheckedModeBanner: false,
            initialRoute: 
            //MainGroupChatScreen.route_MainGroupChatScreen,
            MyHomepage.route_MyHomepage,
            routes: {
              MainGroupChatScreen.route_MainGroupChatScreen: (c) =>
                  MainGroupChatScreen(),
              MyHomepage.route_MyHomepage: (c) => MyHomepage(),
            },
          );
        });
  }
}