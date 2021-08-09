import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const List<String> titles = [
  "https://z3.ax1x.com/2021/05/15/gyx3dJ.jpg",
  "https://z3.ax1x.com/2021/05/15/gyx6JI.jpg",
  "https://z3.ax1x.com/2021/05/15/gyxcWt.jpg"
];

class SwiperView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.w)),
              child: new Image.network(
                titles[index],
                fit: BoxFit.fitWidth,
              ));
        },
        itemCount: 3,
        pagination: new SwiperPagination(
            builder: DotSwiperPaginationBuilder(
                activeColor: Color.fromRGBO(162, 208, 127, 1),
                color: Color.fromRGBO(230, 230, 230, 1),
                size: 8.w,
                activeSize: 8.w)),
        itemWidth: 360.5.w,
        itemHeight: 194.5.w,
        autoplay: true,
      ),
      height: 194.5.w,
      width: 360.5.w,
    );
  }
}
