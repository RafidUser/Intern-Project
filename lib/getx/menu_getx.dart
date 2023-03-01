import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:portal/helper/app_singleton.dart';
import 'package:portal/model/model%20request/inquiry_menu_req.dart';
import 'package:portal/model/model%20respon/inquiry_menu_res.dart';
import 'package:portal/service/restapi.dart';

class MenuGet extends GetxController {
  var screenLoad = false.obs;
  final api = RestApi();
  var error = "".obs;
  var req = inquirymenureq().obs;
  var res = inquirymenures().obs;
  inquirymenureq get reqVal => req.value;

  @override
  void onReady() {
    this.inquirymenu();
    AppSingleton.tap = () {
      Navigator.of(Get.context!).pop();
    };
    super.onReady();
  }

  Future<void> inquirymenu() async {
    try {
      screenLoad(true);
      // await Future.delayed(Duration(seconds: 5));
      print(json.encode(req.value.toJson()));
      var map = await api.inquirymenu(
        req.value.toJson(),
      );
      if (map['data'] != null) {
        res(inquirymenures.fromJson(map));
        res.refresh();
      }
      screenLoad(false);
    } catch (e) {
      screenLoad(false);
      error(e.toString());
    }
  }
}
