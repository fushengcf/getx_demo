import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // leading: new IconButton(
          //   icon: new Icon(Icons.arrow_back_ios),
          //   onPressed: () => {Get.back()},
          // ),
          title: new Text("home！2"),
          // backgroundColor: Colors.black,
          automaticallyImplyLeading: true),
      body: Container(
        child: ElevatedButton(
            onPressed: () => Get.toNamed('/info'), child: new Text('to info')),
      ),
    );
  }
}
