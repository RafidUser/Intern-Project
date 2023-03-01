import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:portal/helper/app_singleton.dart';
import 'package:portal/model/model%20request/inquiry_supported_object_req.dart';
import 'package:portal/model/model%20respon/inquiry_supported_object_res.dart';
import 'package:portal/service/restapi.dart';

class SupportedObjectGet extends GetxController {
  final api = RestApi();
  var screenLoad = false.obs;
  var error = "".obs;
  var req = inquirysupportedobjectreq().obs;
  var res = inquirysupportedobjectres().obs;
  inquirysupportedobjectreq get reqVal => req.value;

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
      var map = await api.inquirysupportedobject(
        req.value.toJson(),
      );
      if (map['data'] != null) {
        res(inquirysupportedobjectres.fromJson(map));
        res.refresh();
      }
      screenLoad(false);
    } catch (e) {
      screenLoad(false);
      error(e.toString());
    }
  }
}
