// ignore_for_file: constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project_my_own_talki/Abdo_Screen/EditProfileScreen/custom_shape.dart';
import 'package:graduation_project_my_own_talki/Abdo_Screen/EditProfileScreen/data_field.dart';
import 'package:graduation_project_my_own_talki/Abdo_Screen/EditProfileScreen/user_info.dart';
import 'package:graduation_project_my_own_talki/Ahmed_Screens/Navigator.dart';
import 'package:intl_phone_field/intl_phone_field.dart';


class EditProfileScreen extends StatelessWidget {
    static const String route_EditProfileScreen = 'EditProfileScreen';
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: const Color(0xff161616),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                CustomPaint(
                  size: Size(MediaQuery.of(context).size.width,220.sp),
                  painter: MyPainter(),
                ),
                Container(
                  margin: REdgeInsets.fromLTRB(40, 30, 40, 20),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            margin:  REdgeInsets.all(8),
                            width: 80.w,
                            height: 80.h,
                            child: InkWell(
                              onTap: (){},
                              child: const CircleAvatar()
                              ),
                          ),
                          Positioned(
                            left: 55.sp,
                            bottom: 10.sp,
                            child: Container(
                              width: 35.w,
                              height: 35.h,
                              decoration: BoxDecoration(
                                color: const Color(0xff434343),
                                borderRadius: BorderRadius.circular(30.r),
                                border: Border.all(
                                  width: 4.w,
                                  color: const Color(0xff202020),
                                ),
                              ),
                              child: InkWell(
                                onTap: (){},
                                child:  Icon(
                                  size: 16.sp,
                                  Icons.border_color,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:  REdgeInsets.only(top: 3),
                        child: Text(
                          userName,
                          style:  TextStyle(
                            fontSize: 24.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding:  REdgeInsets.all(5.0),
                        child: Text(
                          userEmail,
                          style:  TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        userPhoneNumber,
                        style:  TextStyle(
                          fontSize: 16.sp,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin:  REdgeInsets.only(top: 25),
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        child:  Text(
                          'Edit profile',
                          style: TextStyle(
                            fontSize: 28.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin:  REdgeInsets.only(top: 15),
                        height: 45.h,
                        child: DataField('Full Name', TextInputType.name),
                      ),
                      Container(
                        margin:  REdgeInsets.only(top: 15),
                        height: 45.h,
                        child: DataField('Nick Name', TextInputType.name),
                      ),
                      Container(
                        margin:  REdgeInsets.only(top: 15),
                        height: 45.h,
                        child: DataField('Address', TextInputType.streetAddress),
                      ),
                      Container(
                        margin:  REdgeInsets.only(top: 15),
                        height: 65.h,
                        child: IntlPhoneField(
                          dropdownIcon:  Icon(Icons.arrow_drop_down,size: 25.sp,),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xff4D5151),
                              hintText: 'Phone Number',
                              hintStyle:  TextStyle(
                                fontSize: 14.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.r)),
                              contentPadding:  REdgeInsets.all(16)),
                          keyboardType: TextInputType.phone,
                          style:  TextStyle(color: Colors.white,fontSize: 14.sp),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 45.h,
                            width: MediaQuery.of(context).size.width / 2.7,
                            child:
                                DataField('State', TextInputType.streetAddress),
                          ),
                          SizedBox(
                            height: 45.h,
                            width: MediaQuery.of(context).size.width / 2.7,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: const Color(0xff4D5151),
                                  hintText: 'Gender',
                                  hintStyle:  TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.arrow_drop_down,
                                      color: Color(0xff767676),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.r)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.r)),
                                  contentPadding:  REdgeInsets.all(16)),
                              keyboardType: TextInputType.text,
                              style:  TextStyle(color: Colors.white,fontSize: 14.sp),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin:  REdgeInsets.only(top: 15),
                        width: 237.w,
                        height: 50.h,
                        child: ElevatedButton(
                          onPressed: ()=> Backandsubmitineditprofile(context),
                          style: ElevatedButton.styleFrom(
                            alignment: Alignment.center,
                            backgroundColor: const Color(0xffff4b26),
                            padding:  REdgeInsets.all(15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                          ),
                          child:  Text(
                            'Submit',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20.sp),
                          ),
                        ),
                      ),
                      Container(
                        margin:  REdgeInsets.only(top: 15),
                        child: InkWell(
                          onTap: ()=> Backandsubmitineditprofile(context),
                          child:  Text(
                            'Back',
                            style: TextStyle(
                              color: const Color(0xff5F5A5A),
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
