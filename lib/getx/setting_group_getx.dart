import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:get/get.dart';
import 'package:portal/helper/app_singleton.dart';
import 'package:portal/helper/extension.dart';
import 'package:portal/model/model%20request/inquiry_setting_group_req.dart';
import 'package:portal/model/model%20request/insert_setting_group.dart';
import 'package:portal/model/model%20respon/inquiry_setting_group_res.dart';
import 'package:portal/service/restapi.dart';
import 'dart:html' as html;

class SettingGroupGet extends GetxController {
  inquirysettinggroupreq get reqVal => req.value;
  final groupCodeCo = TextEditingController();
  final groupNameCo = TextEditingController();
  var res = inquirysettinggroupres().obs;
  var req = inquirysettinggroupreq().obs;
  var addReq = InsertSettingGroup.init().obs;
  var screenLoad = false.obs;
  var dialogLoad = false.obs;
  var checkAll = false.obs;
  final api = RestApi();
  late DropzoneViewController controller;
  // final ValueChanged<DroppedFile> onDroppedFile;

  // const SettingGroupGet({
  //   Key? key,
  //   required this.onDroppedFile,
  // }) : super(key: key);

  @override
  void onReady() {
    this.inquirySettingGroup();
    AppSingleton.tap = () {
      Navigator.of(Get.context!).pop();
    };
    super.onReady();
  }

  Future<void> inquirySettingGroup() async {
    try {
      screenLoad(true);
      // await Future.delayed(Duration(seconds: 5));
      print(json.encode(req.value.toJson()));
      var map = await api.inquirySettingGroup(
        req.value.toJson(),
      );
      if (map['data'] != null) {
        res(inquirysettinggroupres.fromJson(map));
        res.refresh();
      }
      screenLoad(false);
    } catch (e) {
      screenLoad(false);
      Get.error(e.toString());
    }
  }

  Future<void> addSettingGroup() async {
    try {
      dialogLoad(true);
      await Future.delayed(Duration(seconds: 3));
      print(json.encode(req.value.toJson()));
      await api.addSettingGroup(
        addReq.value.toJson(),
      );
      Get.back();
      dialogLoad(false);
    } catch (e) {
      dialogLoad(false);
      Get.error(e.toString());
    }
  }

  Future<void> updatedSettingGroup(InsertSettingGroup data) async {
    try {
      dialogLoad(true);
      await Future.delayed(Duration(seconds: 3));
      print(json.encode(data.toJson()));
      await api.updatedSettingGroup(
        data.toJson(),
      );
      Get.back();
      dialogLoad(false);
    } catch (e) {
      dialogLoad(false);
      Get.error(e.toString());
    }
  }

  Future<void> deleteSettingGroup() async {
    try {
      screenLoad(true);
      // await Future.delayed(Duration(seconds: 3));
      print(json.encode(req.value.toJson()));
      await api.deleteSettingGroup(
        res.value.toDelete(),
      );
      (this).inquirySettingGroup();
    } catch (e) {
      screenLoad(false);
      Get.error(e.toString());
    }
  }

  bool get canDelete {
    return res.value.data!.any(
      (e) => e.checked?.value == true,
    );
  }

  bool get canEdit {
    var temp = [];
    res.value.data?.forEach((e) {
      if (e.checked?.value == true) temp.add(e);
    });
    return temp.length == 1;
  }

  downloadUserTemplate() async {
    final value = await api.downloadTemplatedSettingGroup();
    if (value != null) {
      var bytes = value['data']['base64Data'];
      var uri = "data:application/octet-stream;charset=utf-16le;base64,$bytes";
      html.AnchorElement anchorElement = html.AnchorElement(href: uri);
      anchorElement.download = value['fileName'] ?? "download.xlsx";
      anchorElement.click();
    }
  }

  Future acceptFile(dynamic events) async {
    final name = events.name;
    final mime = await controller.getFileMIME(events);
    final bytes = await controller.getFileSize(events);
    final url = await controller.createFileUrl(events);

    print('Name: $name');
    print('mime: $mime');
    print('bytes: $bytes');
    print('url: $url');

    // final droppedFile = DroppedFile(
    //   name: name,
    //   mime: mime,
    //   bytes: bytes,
    //   url: url,
    // );
  }
}
