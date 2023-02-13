// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project_my_own_talki/Ahmed_Screens/Navigator.dart';

class HideStatusScreen extends StatelessWidget {
  static const String route_HideStatusScreen = 'HideStatusScreen';
  const HideStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff161616),
      body: Container(
        padding:  REdgeInsets.only(
          top: 10,
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding:  REdgeInsets.only(top: 30,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: ()=>Statusprivacy(context),
                      icon:  Icon(
                        Icons.arrow_back,
                        size: 30.sp,
                        color: const Color(0xffFF4B26),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child:  Text(
                            'Hide status from...',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                         Text(
                          '  contacts excluded',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                    Transform.translate(
                      offset: const Offset(20, 0),
                      child: IconButton(
                        onPressed: () {},
                        icon:  Icon(
                          Icons.search,
                          size: 30.sp,
                          color: const Color(0xffFF4B26),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon:  Icon(
                        Icons.playlist_add_check,
                        size: 35.sp,
                        color: const Color(0xffFF4B26),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.white,
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
