// ignore_for_file: use_key_in_widget_constructors, constant_identifier_names, camel_case_types, sort_child_properties_last, avoid_unnecessary_containers, file_names, non_constant_identifier_names, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project_my_own_talki/Ahmed_Screens/CircleAvatar/CircleAvatar.dart';
import 'package:graduation_project_my_own_talki/Ahmed_Screens/Navigator.dart';
import 'package:graduation_project_my_own_talki/Ahmed_Screens/TextForm/Myform.dart';
import 'package:graduation_project_my_own_talki/Ahmed_Screens/my_theme.dart';

class create_an_account extends StatefulWidget {
  static const String route_name_create_an_account = 'routename';

  @override
  State<create_an_account> createState() => _create_an_accountState();
}

class _create_an_accountState extends State<create_an_account> {
  bool Paswword_Visibilty = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(22, 22, 22, 1.0),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                      padding: REdgeInsets.only(top: 50, left: 20, right: 170),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Create an',
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          Text(
                            'account',
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ],
                      )),
                  SizedBox(height: 4.h),
                ],
              ),
              InkWell(
                onTap: () {},
                child: Center(
                  child: CircleAvatar(
                    child:  Padding(
                      padding: const EdgeInsets.only(right: 5,bottom: 3),
                      child: Icon(Icons.add_a_photo,size: 40.sp,
                      ),
                    ),
                    backgroundColor: const Color.fromRGBO(95, 90, 90, 1.0),
                    radius: 40.r,
                  ),
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Padding(
                  padding: REdgeInsets.only(left: 20, right: 20),
                  child: MyForme(
                      'Email or Phone Number',
                      icon: const Icon(Icons.person,color: Color.fromRGBO(95, 90, 90, 1.0)),
                      TextInputType.emailAddress)),
              SizedBox(height: 10.h),
              Container(
                child: Padding(
                  padding: REdgeInsets.only(left: 20, right: 20),
                  child: MyForme(
                      'first Name',
                      icon: const Icon(Icons.person,color: Color.fromRGBO(95, 90, 90, 1.0)),
                      TextInputType.name),
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                  margin: REdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: MyForme(
                      'Last Name',
                      icon: const Icon(Icons.person,color: Color.fromRGBO(95, 90, 90, 1.0)),
                      TextInputType.name)),
              SizedBox(height: 10.h),
              Padding(
                padding: REdgeInsets.only(left: 20, right: 20),
                child: Myform2(
                    'Password',
                    const Icon(
                      Icons.lock,
                      size: 20,
                      color: Color.fromRGBO(95, 90, 90, 1.0),
                    ),
                    TextInputType.visiblePassword,
                    Visibilty_Paswword: !Paswword_Visibilty,
                    addicon: IconButton(
                      onPressed: () {
                        setState(() {
                          Paswword_Visibilty == !Paswword_Visibilty;
                        });
                      },
                      icon: (const Icon(
                        Icons.visibility,
                        size: 20,
                      )),
                      color: const Color.fromRGBO(95, 90, 90, 1.0),
                    )),
              ),
              SizedBox(height: 10.h),
              Center(
                child: Padding(
                  padding: REdgeInsets.only(left: 20, right: 20),
                  child: Myform2(
                      'Confirm Password',
                      const Icon(
                        Icons.lock,
                        size: 20,
                        color: Color.fromRGBO(95, 90, 90, 1.0),
                      ),
                      TextInputType.visiblePassword,
                      addicon: IconButton(
                        onPressed: () {
                          setState(() {});
                        },
                        icon: (const Icon(
                          Icons.visibility,
                          size: 20,
                        )),
                        color: const Color.fromRGBO(95, 90, 90, 1.0),
                      )),
                ),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: REdgeInsets.only(left: 20, right: 20),
                child: Myform2(
                  'Birthdate dd / mm / yy',
                  const Icon(
                    Icons.calendar_today,
                    size: 20,
                    color: Color.fromRGBO(95, 90, 90, 1.0),
                  ),
                  TextInputType.visiblePassword,
                ),
              ),
              SizedBox(height: 10.h),
              Wrap(
                children: [
                  Container(
                    margin: REdgeInsets.only(left: 20),
                    width: 7.0.w,
                    height: 15.0.h,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(95, 90, 90, 1.0),
                        shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: 4.w,
                    height: 20.h,
                  ),
                  Container(
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'By Clicking The  ',
                            style: MyThemeData.Rich_Text)
                      ]),
                    ),
                  ),
                  Container(
                    child:  Text(
                      'Register  ',
                      style: TextStyle(
                          color: const Color.fromRGBO(255, 75, 38, 1.0), fontSize: 12.sp),
                    ),
                  ),
                  Container(
                    child: Text(
                      'button, you agree to the',
                      style: MyThemeData.Rich_Text,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                        ' public offer',
                        style: MyThemeData.Rich_Text,
                      ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                        padding: REdgeInsets.only(left: 24),
                        child: Text(
                          'Register',
                          style: MyThemeData.Register,
                        )),
                  ),
                  Expanded(
                      child: InkWell(
                          onTap: () {
                            CircleAvatar_go_to_sin_in(context);
                          },
                          child: My_CircleAvatar()))
                ],
              ),
              SizedBox(height: 13.h),
              Padding(
                padding: REdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Center(
                        child: Text(
                          'Sign in With',
                          style: MyThemeData.Text_Sin_in,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                      image: AssetImage('assets/image/logos_google-icon.png')),
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
                          image: AssetImage('assets/image/logos_facebook.png'))),
                ],
              ),
              SizedBox(height: 12.h),
              Center(
                child: InkWell(
                  onTap: () {
                    Select_Screen_Sin_In(context);
                  },
                  child: Text(
                    'Back',
                    style: MyThemeData.Text_Sin_in,
                  ),
                ),
              ),
              Container(
                margin: REdgeInsets.only(bottom: 30),
              )
            ],
          ),
        ),
      ),
    );
  }
}
