import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:portal/helper/app_singleton.dart';
import 'package:portal/helper/extension.dart';
import 'package:portal/model/model%20request/inquiry_parameter_req.dart';
import 'package:portal/model/model%20respon/inquiry_parameter_res.dart';
import 'package:portal/service/restapi.dart';

class ParameterGet extends GetxController {
  inquiryparameterreq get reqVal => req.value;
  final groupCodeCo = TextEditingController();
  final groupNameCo = TextEditingController();
  final paramCo = TextEditingController();
  var res = inquiryparameterres().obs;
  var req = inquiryparameterreq().obs;
  var screenLoad = false.obs;
  final api = RestApi();
  var error = "".obs;
  var checkAll = false.obs;

  @override
  void onReady() {
    this.inquiryParameter();
    AppSingleton.tap = () {
      Navigator.of(Get.context!).pop();
    };
    super.onReady();
  }

  Future<void> inquiryParameter() async {
    try {
      screenLoad(true);
      // await Future.delayed(Duration(seconds: 5));
      print(json.encode(req.value.toJson()));
      var map = await api.inquiryParameter(
        req.value.toJson(),
      );
      if (map['data'] != null) {
        res(inquiryparameterres.fromJson(map));
        res.refresh();
      }
      screenLoad(false);
    } catch (e) {
      screenLoad(false);
      error(e.toString());
    }
  }

  Future<void> deleteparameter() async {
    try {
      screenLoad(true);
      // await Future.delayed(Duration(seconds: 3));
      print(json.encode(req.value.toJson()));
      await api.deleteParameterGroup(
        res.value.toDelete(),
      );
      (this).inquiryParameter();
    } catch (e) {
      screenLoad(false);
      Get.error(e.toString());
    }
  }

  bool get canEdit {
    var temp = [];
    res.value.data?.forEach((e) {
      if (e.checked?.value == true) temp.add(e);
    });
    return temp.length == 1;
  }

  bool get canDelete {
    return res.value.data!.any(
      (e) => e.checked?.value == true,
    );
  }
}
