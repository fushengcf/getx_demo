import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/entity/engraving.dart';
import 'controller.dart';

class InfoView extends StatelessWidget {
  InfoView({Key? key}) : super(key: key);
  _buildListView(List<EngravingItem>? records) {
    return records == null
        ? Center(
            child: Column(
              children: [
                Text("没有数据"),
                ElevatedButton(
                  onPressed: () {
                    Get.find<InfoController>().getPageList();
                  },
                  child: Text('拉取数据'),
                ),
              ],
            ),
          )
        : ListView.separated(
            itemCount: records.length,
            itemBuilder: (context, index) {
              final EngravingItem item = records[index];
              return ListTile(
                onTap: () => null,
                title: Text(item.occupantGenderText!),
                trailing: Text("分类 ${item.tombstoneStyleIdText}"),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider();
            },
          );
  }

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<InfoController>();
    return Scaffold(
      appBar: AppBar(
        title: new Text("info"),
      ),
      body:
          // 显示
          GetX<InfoController>(
        init: controller,
        builder: (_) => _buildListView(_.engravingPageList.value.records),
      ),
    );
  }
}
