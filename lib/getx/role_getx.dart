import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:portal/model/model%20request/inquiry_role_req.dart';
import 'package:portal/model/model%20respon/inquiry_role_res.dart';

import '../service/restapi.dart';

class RoleGet extends GetxController {
  inquiryrolereq get reqVal => req.value;
  final RoleCodeCo = TextEditingController();
  final RoleNameCo = TextEditingController();
  var res = inquiryroleres().obs;
  var req = inquiryrolereq().obs;
  var screenLoad = false.obs;
  final api = RestApi();
  var error = "".obs;

  @override
  void onReady() {
    this.inquiryRole();
    super.onReady();
  }

  Future<void> inquiryRole() async {
    try {
      screenLoad(true);
      // await Future.delayed(Duration(seconds: 5));
      print(json.encode(req.value.toJson()));
      var map = await api.inquiryRole(
        req.value.toJson(),
      );
      if (map['data'] != null) {
        res(inquiryroleres.fromJson(map));
        res.refresh();
      }
      screenLoad(false);
    } catch (e) {
      screenLoad(false);
      error(e.toString());
    }
  }
}
