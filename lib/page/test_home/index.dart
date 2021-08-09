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
        backgroundColor: Color.fromARGB(245, 245, 245, 245),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                child: SwiperView(),
                padding: new EdgeInsets.only(
                    top: 30.w, right: 6.5.w, bottom: 6.5.w, left: 6.5.w),
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
        ));
  }
}
