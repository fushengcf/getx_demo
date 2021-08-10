import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5.w))),
        padding: EdgeInsets.all(5.w),
        child: new Container(
          decoration: BoxDecoration(),
          padding:
              EdgeInsets.only(left: 20.w, right: 20.w, top: 10.w, bottom: 10.w),
          child: new Row(
            children: [
              new Column(
                children: [
                  new Text(
                    "18",
                    style: TextStyle(
                        fontSize: 24.w,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Impact'),
                  ),
                  new Text(
                    "周四",
                    style: TextStyle(fontSize: 12.w),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 10.w),
                child: SizedBox(
                  width: 2.w,
                  height: 36.w,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.grey),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 5.w,
                          width: 5.w,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2.5.w))),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 9.w),
                          child: Text(
                            "消息通知",
                            style: TextStyle(fontSize: 12.w),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 5.w,
                          width: 5.w,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2.5.w))),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 9.w),
                          child: Text(
                            "系统消息通知",
                            style: TextStyle(fontSize: 12.w),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
