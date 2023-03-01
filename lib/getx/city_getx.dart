import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:portal/helper/app_singleton.dart';
import 'package:portal/model/model%20request/inquiry_city_req.dart';
import 'package:portal/model/model%20respon/inquiry_city_res.dart';
import 'package:portal/service/restapi.dart';
import 'dart:html' as html;

class CityGet extends GetxController {
  inquirycityreq get reqVal => req.value;
  var req = inquirycityreq().obs;
  var res = inquirycityres().obs;
  final provinceCo = TextEditingController();
  final cityCodeCo = TextEditingController();
  final cityNameCo = TextEditingController();
  var screenLoad = false.obs;
  var error = "".obs;
  final api = RestApi();
  var checkAll = false.obs;

  @override
  void onReady() {
    this.inquiryCity();
    AppSingleton.tap = () {
      Navigator.of(Get.context!).pop();
    };
    super.onReady();
  }

  Future<void> inquiryCity() async {
    try {
      screenLoad(true);
      // await Future.delayed(Duration(seconds: 5));
      print(json.encode(req.value.toJson()));
      var map = await api.inquiryCity(
        req.value.toJson(),
      );
      if (map['data'] != null) {
        res(inquirycityres.fromJson(map));
        res.refresh();
      }
      screenLoad(false);
    } catch (e) {
      screenLoad(false);
      error(e.toString());
    }
  }

  downloadUserTemplate() async {
    final value = await api.downloadTemplatedCity();
    if (value != null) {
      var bytes = value['data']['base64Data'];
      var uri = "data:application/octet-stream;charset=utf-16le;base64,$bytes";
      html.AnchorElement anchorElement = html.AnchorElement(href: uri);
      anchorElement.download = value['fileName'] ?? "download.xlsx";
      anchorElement.click();
    }
  }
}
