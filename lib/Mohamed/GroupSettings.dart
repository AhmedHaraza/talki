// ignore_for_file: file_names, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GroupSettings extends StatefulWidget {
          static const String route_GroupSettings = 'GroupSettings';
  const GroupSettings({Key? key}) : super(key: key);

  @override
  State<GroupSettings> createState() => _GroupSettingsState();
}

class _GroupSettingsState extends State<GroupSettings> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title:  Text('Group Settings', style: TextStyle(fontSize: 25.sp)),
          leading: Container(
            margin:  REdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60.r),
                boxShadow:  [
                  BoxShadow(
                      color: const Color.fromRGBO(255, 75, 38, 1.0),
                      spreadRadius: 3.r,
                      blurRadius: 5.r,
                      offset: const Offset(0.0, 0.0))
                ]),
            child:  CircleAvatar(
              backgroundColor: Colors.deepOrange,
              child: Icon(
                Icons.arrow_back,
                size: 25.sp,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: const Color(0xff1C1C1C),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.black,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InkWell(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin:  REdgeInsets.only(top: 20),
                  padding: REdgeInsets.all(15),
                  color: const Color(0xff1C1C1C),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Padding(
                        padding: REdgeInsets.all(5.0),
                        child:  Text(
                          "Edit Group info",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                       Padding(
                        padding: REdgeInsets.all(5.0),
                        child: Text(
                          "All Participants",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin:  REdgeInsets.only(top: 20),
                  padding: REdgeInsets.all(15),
                  color: const Color(0xff1C1C1C),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Padding(
                        padding: REdgeInsets.all(5.0),
                        child:  Text(
                          "Send messages",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                       Padding(
                        padding: REdgeInsets.all(5.0),
                        child: Text(
                          "All Participants",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 100.h,
                  width: MediaQuery.of(context).size.width,
                  margin:  REdgeInsets.only(top: 20),
                  padding: REdgeInsets.all(15),
                  color: const Color(0xff1C1C1C),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Padding(
                        padding: REdgeInsets.all(5.0),
                        child: Text(
                          "Edit group admin",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
