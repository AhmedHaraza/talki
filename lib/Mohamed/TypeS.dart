// ignore: file_names
// ignore_for_file: must_be_immutable, unused_import, file_names, duplicate_ignore, constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project_my_own_talki/Ahmed_Screens/Navigator.dart';
class TypeS extends StatelessWidget {
          static const String route_TypeS = 'TypeS';
  TypeS({Key? key}) : super(key: key);
  var o = const Color(0xffff4928);
  var bb = Colors.black;
  var b = const Color(0xff5d5958);
  var w = Colors.white;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          toolbarHeight: 50.h,
          backgroundColor: const Color(0xff5073ED),
          leading: IconButton(
             padding: REdgeInsets.only(left: 20),
            onPressed: ()=> addstatus(context),
            icon:  Icon(
              Icons.cancel_outlined,
              size: 30.sp,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              padding: REdgeInsets.only(right: 30),
              onPressed: () {},
              icon:  Icon(
                Icons.mood,
                size: 30.sp,
                color: Colors.white,
              ),
            ),
            IconButton(
               padding: REdgeInsets.only(right: 30),
                onPressed: () {},
                icon:  Icon(
                  Icons.text_fields,
                  size: 30.sp,
                  color: Colors.white,
                )),
            IconButton(
               padding: REdgeInsets.only(right: 30),
                onPressed: () {},
                icon:  Icon(
                  Icons.cookie_outlined,
                  size: 30.sp,
                  color: Colors.white,
                ))
          ],
        ),
        body: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          padding:  REdgeInsets.fromLTRB(20, 5, 10, 20),
          color: const Color(0xff5073ED),
          child: TextFormField(
            maxLines: null,
            minLines: null,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent
                )
              ),
                hintText: "Type a Status",
                hintStyle: TextStyle(color: Colors.white),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent))
                    ),
            style:  TextStyle(
                color: Colors.white,
                fontSize: 32.sp,
                fontWeight: FontWeight.w700),
          ),
        ),
        floatingActionButton: Container(
          margin:  REdgeInsets.only(bottom: 10),
          width: 53.w,
          height: 53.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.r),
              ),
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            child:  Padding(
              padding:  REdgeInsets.only(left: 4),
              child: Icon(
                Icons.send,
                size: 30.sp,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      );
  }
}
