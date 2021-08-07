import 'package:getx_demo/entity/engraving.dart';
import 'package:getx_demo/utils/http.dart';

class EngravingAPI {
//墓碑刻制-分页数据
  static Future<EngravingPageListResponseEntity> engravingPageList(
      Map<String, int>? params) async {
    var response = await HttpUtil()
        .request('get', '/api/tombstone/engraving/page', params: params);
    return EngravingPageListResponseEntity.fromJson(response);
  }
}
