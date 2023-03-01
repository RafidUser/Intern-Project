import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:portal/helper/extension.dart';
import 'package:portal/model/model%20request/inquiry_setting_req.dart';
import 'package:portal/model/model%20request/insert_sertting.dart';
import 'package:portal/model/model%20respon/inquiry_setting_res.dart';
import 'package:portal/service/restapi.dart';
import 'dart:html' as html;

class SettingGet extends GetxController {
  inquirysettingreq get reqVal => req.value;
  final settinggroupCo = TextEditingController();
  final settingcodeCo = TextEditingController();
  final settingDescCo = TextEditingController();
  final settingValueTypeCo = TextEditingController();
  final settingValueCo = TextEditingController();
  var res = inquirysettingres().obs;
  var req = inquirysettingreq().obs;
  var addReq = InsertSetting.init().obs;
  var screenLoad = false.obs;
  var dialogLoad = false.obs;
  var checkAll = false.obs;
  final api = RestApi();
  // var error = "".obs;

  @override
  void onReady() {
    this.inquirySetting();
    super.onReady();
  }

  Future<void> inquirySetting() async {
    try {
      screenLoad(true);
      // await Future.delayed(Duration(seconds: 5));
      print(json.encode(req.value.toJson()));
      var map = await api.inquirySetting(
        req.value.toJson(),
      );
      if (map['data'] != null) {
        res(inquirysettingres.fromJson(map));
        res.refresh();
      }
      screenLoad(false);
    } catch (e) {
      screenLoad(false);
      Get.error(e.toString());
    }
  }

  Future<void> addSetting() async {
    try {
      dialogLoad(true);
      await Future.delayed(Duration(seconds: 3));
      print(json.encode(req.value.toJson()));
      await api.addSetting(
        addReq.value.toJson(),
      );
      Get.back();
      dialogLoad(false);
    } catch (e) {
      dialogLoad(false);
      Get.error(e.toString());
    }
  }

  Future<void> updatedSetting(InsertSetting data) async {
    try {
      dialogLoad(true);
      await Future.delayed(Duration(seconds: 3));
      print(json.encode(data.toJson()));
      await api.updatedSetting(
        data.toJson(),
      );
      Get.back();
      dialogLoad(false);
    } catch (e) {
      dialogLoad(false);
      Get.error(e.toString());
    }
  }

  Future<void> deleteSetting() async {
    try {
      screenLoad(true);
      // await Future.delayed(Duration(seconds: 3));
      print(json.encode(req.value.toJson()));
      await api.deleteSetting(
        res.value.toDelete(),
      );
      (this).inquirySetting();
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
    final value = await api.downloadTemplatedSetting();
    if (value != null) {
      var bytes = value['data']['base64Data'];
      var uri = "data:application/octet-stream;charset=utf-16le;base64,$bytes";
      html.AnchorElement anchorElement = html.AnchorElement(href: uri);
      anchorElement.download = value['fileName'] ?? "download.xlsx";
      anchorElement.click();
    }
  }
}
