import 'package:get/get.dart';
import 'package:getx_demo/api/engraving.dart';
import 'package:getx_demo/entity/engraving.dart';

class InfoController extends GetxController {
  var engravingPageList =
      Rx<EngravingPageListResponseEntity>(EngravingPageListResponseEntity());

  @override
  void onInit() {
    super.onInit();
    print("onInit");
    getPageList();
    // 每次
    ever(engravingPageList, (value) {
      print("ever -> " + value.toString());
    });
  }

  @override
  void onClose() {
    super.onClose();
    print("onClose");
  }

  getPageList() async {
    Map<String, int>? params = {"page": 1, "size": 10};
    engravingPageList.value = await EngravingAPI.engravingPageList(params);
  }
}
