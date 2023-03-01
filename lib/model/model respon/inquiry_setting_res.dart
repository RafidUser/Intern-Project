import 'dart:convert';

import 'package:get/get.dart';

class inquirysettingres {
  String? status;
  String? message;
  int? countData;
  List<SettingData>? data;

  inquirysettingres({
    this.status,
    this.message,
    this.countData,
    this.data = const [],
  });

  inquirysettingres.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    countData = json['countData'];
    data = <SettingData>[];
    if (json['data'] != null) {
      json['data'].forEach((v) {
        data!.add(new SettingData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['countData'] = this.countData;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  Map<String, dynamic> toDelete() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      var xList = [];
      this.data!.forEach((e) {
        if (e.checked!.value == true) {
          xList.add({'code': e.settingCode});
        }
      });
      data['listCode'] = xList;
      print(json.encode(data));
    }
    return data;
  }
}

class SettingData {
  String? createdBy;
  String? createdTime;
  String? updatedBy;
  String? updatedTime;
  String? settingCode;
  String? settingGroupCode;
  String? settingDesc;
  String? settingValue;
  String? settingValueType;
  RxBool? checked;

  SettingData({
    this.createdBy,
    this.createdTime,
    this.updatedBy,
    this.updatedTime,
    this.settingCode,
    this.settingGroupCode,
    this.settingDesc,
    this.settingValue,
    this.settingValueType,
    this.checked,
  });

  SettingData.fromJson(Map<String, dynamic> json) {
    createdBy = json['createdBy'];
    createdTime = json['createdTime'];
    updatedBy = json['updatedBy'];
    updatedTime = json['updatedTime'];
    settingCode = json['settingCode'];
    settingGroupCode = json['settingGroupCode'];
    settingDesc = json['settingDesc'];
    settingValue = json['settingValue'];
    settingValueType = json['settingValueType'];
    checked = false.obs;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createdBy'] = this.createdBy;
    data['createdTime'] = this.createdTime;
    data['updatedBy'] = this.updatedBy;
    data['updatedTime'] = this.updatedTime;
    data['settingCode'] = this.settingCode;
    data['settingGroupCode'] = this.settingGroupCode;
    data['settingDesc'] = this.settingDesc;
    data['settingValue'] = this.settingValue;
    data['settingValueType'] = this.settingValueType;
    return data;
  }

  Map<String, dynamic> toUpdate() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['settinggroup'] = this.settingGroupCode;
    data['settingcd'] = this.settingCode;
    data['desc'] = this.settingDesc;
    data['settingvaluetype'] = this.settingValueType;
    data['settingvalue'] = this.settingValue;
    return data;
  }
}
