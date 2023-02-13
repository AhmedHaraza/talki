// ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors, constant_identifier_names, camel_case_types, file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project_my_own_talki/Ahmed_Screens/CircleAvatar/CircleAvatar.dart';
import 'package:graduation_project_my_own_talki/Ahmed_Screens/Navigator.dart';
import 'package:graduation_project_my_own_talki/Ahmed_Screens/TextForm/Myform.dart';
import 'package:graduation_project_my_own_talki/Ahmed_Screens/my_theme.dart';
class Sign_In extends StatefulWidget {
  static const String Route_Sign_In = 'Sing In';
  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(22, 22, 22, 1.0),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: REdgeInsets.only(top: 60, left: 20, bottom: 34),
                width: 132.w,
                height: 55.h,
                child: Image.asset(
                  "assets/image/Talki.png",
                ),
              ),
              Container(
                margin: REdgeInsets.only(left: 20, right: 19),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30.h),
                    Container(
                      child: MyForme(
                          'Email or Phone Number',
                          icon:  Icon(Icons.person,
                          color:  const Color.fromRGBO(95, 90, 90, 1.0),
                          size: 20.sp,
                          ),
                          TextInputType.emailAddress),
                    ),
                    SizedBox(height: 21.h),
                    Container(
                      child: Myform2(
                          'Password',
                          Icon(
                            Icons.lock,
                            size: 20.sp,
                            color: const Color.fromRGBO(95, 90, 90, 1.0),
                          ),
                          TextInputType.visiblePassword,
                          addicon: IconButton(
                            onPressed: () {
                              setState(() {});
                            },
                            icon: (Icon(
                              Icons.visibility,
                              size: 20.sp,
                            )),
                            color: const Color.fromRGBO(95, 90, 90, 1.0),
                          )),
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            child: Text(
                              'Create a new account',
                              style: MyThemeData.Page_Sign_in,
                            ),
                            onTap: () =>
                                Select_Screen_create_an_ccount(context)),
                        SizedBox(width: 110.w),
                        InkWell(
                          child: Text(
                            'Forget Password',
                            style: MyThemeData.Page_Sign_in,
                          ),
                          onTap: ()=>  forgetpass(context),
                        ),
                      ],
                    ),
                    SizedBox(height: 50.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                            child: Text(
                          'Sign In',
                          style: MyThemeData.Register,
                        )),
                        Container(
                          margin: REdgeInsets.only(right: 10),
                          child: InkWell(
                            child: My_CircleAvatar(),
                            onTap: () => Select_Screen_Pinned_Message(context),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 55.h),
                    Center(
                        child: Text(
                      'Sign In with',
                      style: MyThemeData.Text_Sin_in,
                    )),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(
                            image:
                                AssetImage('assets/image/logos_google-icon.png')),
                        SizedBox(
                          width: 17.w,
                        ),
                        const Center(
                          child: Image(
                              image: AssetImage(
                                  'assets/image/foundation_social-apple.png')),
                        ),
                        SizedBox(
                          width: 17.w,
                        ),
                        const Center(
                            child: Image(
                                image: AssetImage(
                                    'assets/image/logos_facebook.png'))),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
