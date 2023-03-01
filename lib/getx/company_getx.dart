import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:portal/helper/app_singleton.dart';
import 'package:portal/model/model%20request/inquiry_company_req.dart';
import 'package:portal/model/model%20respon/inquiry_company_res.dart';
import 'package:portal/service/restapi.dart';
import 'dart:html' as html;

class CompanyGet extends GetxController {
  var screenLoad = false.obs;
  final api = RestApi();
  var error = "".obs;
  var req = inquirycompanyreq().obs;
  var res = inquirycompanyres().obs;
  inquirycompanyreq get reqVal => req.value;

  @override
  void onReady() {
    this.inquiryCompany();
    AppSingleton.tap = () {
      Navigator.of(Get.context!).pop();
    };
    super.onReady();
  }

  Future<void> inquiryCompany() async {
    try {
      screenLoad(true);
      // await Future.delayed(Duration(seconds: 5));
      print(json.encode(req.value.toJson()));
      var map = await api.inquiryCompany(
        req.value.toJson(),
      );
      if (map['data'] != null) {
        res(inquirycompanyres.fromJson(map));
        res.refresh();
      }
      screenLoad(false);
    } catch (e) {
      screenLoad(false);
      error(e.toString());
    }
  }

  downloadUserTemplate() async {
    final value = await api.downloadTemplatedCompany();
    if (value != null) {
      var bytes = value['data']['base64Data'];
      var uri = "data:application/octet-stream;charset=utf-16le;base64,$bytes";
      html.AnchorElement anchorElement = html.AnchorElement(href: uri);
      anchorElement.download = value['fileName'] ?? "download.xlsx";
      anchorElement.click();
    }
  }
}
