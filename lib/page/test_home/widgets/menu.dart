import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

const List<String> menus = [
  "assets/1.png",
  "assets/2.png",
  "assets/3.png",
  "assets/4.png",
  "assets/5.png",
];

class MenuView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Wrap(
        children: [
          for (int i = 0; i < 5; i++)
            new Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.w)),
                  child: new Image.asset(
                    menus[i],
                    fit: BoxFit.fitWidth,
                    width: 96.w,
                    height: 63.w,
                  ),
                ),
                padding: EdgeInsets.all(10.5.w))
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5.w))),
      width: 361.5.w,
      padding: EdgeInsets.all(5.w),
    );
  }
}
