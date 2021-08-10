import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getx_demo/page/test_home/widgets/menu.dart';
import 'package:getx_demo/page/test_home/widgets/message.dart';
import 'package:getx_demo/page/test_home/widgets/new.dart';
import 'package:getx_demo/page/test_home/widgets/swiper.dart';

class TESTHOME extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(245, 245, 245, 1),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(132, 176, 98, 1),
                  // Color.fromRGBO(245, 245, 245, 1),
                  Color.fromRGBO(245, 245, 245, 1)
                ],
              ),
            ),
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  child: SwiperView(),
                  padding: new EdgeInsets.only(
                      top:
                          MediaQueryData.fromWindow(window).padding.top + 6.5.w,
                      right: 6.5.w,
                      bottom: 6.5.w,
                      left: 6.5.w),
                ),
                Container(
                  child: MenuView(),
                  padding: new EdgeInsets.all(6.5.w),
                ),
                Container(
                  child: MessageView(),
                  padding: new EdgeInsets.all(6.5.w),
                ),
                Container(
                  child: NewsView(),
                  padding: new EdgeInsets.all(6.5.w),
                )
              ],
            ),
          ),
        ));
  }
}
