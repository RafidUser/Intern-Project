import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:portal/helper/app_singleton.dart';
import 'package:portal/model/model%20request/inquiry_province_req.dart';
import 'package:portal/model/model%20respon/inquiry_province_res.dart';
import 'package:portal/service/restapi.dart';
import 'dart:html' as html;

class ProvinceGet extends GetxController {
  inquiryprovincereq get reqVal => req.value;
  final provinceCdCo = TextEditingController();
  final provinceNameCo = TextEditingController();
  final paramCo = TextEditingController();
  var res = inquiryprovinceres().obs;
  var req = inquiryprovincereq().obs;
  var screenLoad = false.obs;
  final api = RestApi();
  var error = "".obs;
  var checkAll = false.obs;

  @override
  void onReady() {
    this.inquiryProvince();
    AppSingleton.tap = () {
      Navigator.of(Get.context!).pop();
    };
    super.onReady();
  }

  Future<void> inquiryProvince() async {
    try {
      screenLoad(true);
      // await Future.delayed(Duration(seconds: 5));
      print(json.encode(req.value.toJson()));
      var map = await api.inquiryProvince(
        req.value.toJson(),
      );
      if (map['data'] != null) {
        res(inquiryprovinceres.fromJson(map));
        res.refresh();
      }
      screenLoad(false);
    } catch (e) {
      error(e.toString());
    }
  }

  downloadUserTemplate() async {
    final value = await api.downloadTemplatedProvince();
    if (value != null) {
      var bytes = value['data']['base64Data'];
      var uri = "data:application/octet-stream;charset=utf-16le;base64,$bytes";
      html.AnchorElement anchorElement = html.AnchorElement(href: uri);
      anchorElement.download = value['fileName'] ?? "download.xlsx";
      anchorElement.click();
    }
  }
}
