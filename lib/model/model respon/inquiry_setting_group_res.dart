import 'dart:convert';

import 'package:get/get.dart';

class inquirysettinggroupres {
  String? status;
  String? message;
  int? countData;
  List<SettingGroupData>? data;

  inquirysettinggroupres({
    this.status,
    this.message,
    this.countData,
    this.data = const [],
  });

  inquirysettinggroupres.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    countData = json['countData'];
    data = <SettingGroupData>[];
    if (json['data'] != null) {
      json['data'].forEach((v) {
        data!.add(new SettingGroupData.fromJson(v));
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
          xList.add({'code': e.settingGroupCode});
        }
      });
      data['listCode'] = xList;
      print(json.encode(data));
    }
    return data;
  }
}

class SettingGroupData {
  String? createdBy;
  String? createdTime;
  String? updatedBy;
  String? updatedTime;
  String? settingGroupCode;
  String? settingGroupName;
  String? settingGroupDesc;
  RxBool? checked;

  SettingGroupData({
    this.createdBy,
    this.createdTime,
    this.updatedBy,
    this.updatedTime,
    this.settingGroupCode,
    this.settingGroupName,
    this.settingGroupDesc,
    this.checked,
  });

  SettingGroupData.fromJson(Map<String, dynamic> json) {
    createdBy = json['createdBy'];
    createdTime = json['createdTime'];
    updatedBy = json['updatedBy'];
    updatedTime = json['updatedTime'];
    settingGroupCode = json['settingGroupCode'];
    settingGroupName = json['settingGroupName'];
    settingGroupDesc = json['settingGroupDesc'];
    checked = false.obs;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createdBy'] = this.createdBy;
    data['createdTime'] = this.createdTime;
    data['updatedBy'] = this.updatedBy;
    data['updatedTime'] = this.updatedTime;
    data['settingGroupCode'] = this.settingGroupCode;
    data['settingGroupName'] = this.settingGroupName;
    data['settingGroupDesc'] = this.settingGroupDesc;
    return data;
  }

  Map<String, dynamic> toUpdate() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['groupCd'] = this.settingGroupCode;
    data['groupName'] = this.settingGroupName;
    data['groupDesc'] = this.settingGroupDesc;
    return data;
  }
}
