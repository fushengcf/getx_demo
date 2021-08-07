import 'package:get/get.dart';
import 'package:getx_demo/page/home/index.dart';
import 'package:getx_demo/page/info/bindings.dart';
import 'package:getx_demo/page/info/index.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;

  // static final unknownRoute = GetPage(
  //   name: AppRoutes.NotFound,
  //   page: () => NotfoundView(),
  // );

  static final List<GetPage> routes = [
    // 免登陆
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => HomePage(),
      transition: Transition.downToUp,
    ),

    // 信息页
    GetPage(
      name: AppRoutes.INFO,
      page: () => InfoView(),
      transition: Transition.downToUp,
      binding: InfoBinding(),
    ),
  ];
}
