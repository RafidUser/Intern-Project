import 'dart:convert';
import 'package:get/get.dart';

class inquiryparameterres {
  String? status;
  String? message;
  int? countData;
  List<ParameterData>? data;

  inquiryparameterres({
    this.status,
    this.message,
    this.countData,
    this.data = const [],
  });

  inquiryparameterres.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    countData = json['countData'];
    if (json['data'] != null) {
      data = <ParameterData>[];
      json['data'].forEach((v) {
        data!.add(new ParameterData.fromJson(v));
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
          xList.add({'code': e.paramGroupCode});
        }
      });
      data['listCode'] = xList;
      print(json.encode(data));
    }
    return data;
  }
}

class ParameterData {
  String? createdBy;
  String? createdTime;
  String? updatedBy;
  String? updatedTime;
  String? paramGroupCode;
  String? paramGroupName;
  String? paramName;
  RxBool? checked;

  ParameterData({
    this.createdBy,
    this.createdTime,
    this.updatedBy,
    this.updatedTime,
    this.paramGroupCode,
    this.paramGroupName,
    this.paramName,
    this.checked,
  });

  ParameterData.fromJson(Map<String, dynamic> json) {
    createdBy = json['createdBy'];
    createdTime = json['createdTime'];
    updatedBy = json['updatedBy'];
    updatedTime = json['updatedTime'];
    paramGroupCode = json['paramGroupCode'];
    paramGroupName = json['paramGroupName'];
    paramName = json['paramName'];
    checked = false.obs;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createdBy'] = this.createdBy;
    data['createdTime'] = this.createdTime;
    data['updatedBy'] = this.updatedBy;
    data['updatedTime'] = this.updatedTime;
    data['paramGroupCode'] = this.paramGroupCode;
    data['paramGroupName'] = this.paramGroupName;
    data['paramName'] = this.paramName;
    return data;
  }
}

class ListParameter {
  String? paramCode;
  String? paramName;
  String? paramDesc;

  ListParameter({
    this.paramCode,
    this.paramName,
    this.paramDesc,
  });

  ListParameter.fromJson(Map<String, dynamic> json) {
    paramCode = json['paramCode'];
    paramName = json['paramName'];
    paramDesc = json['paramDesc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['paramCode'] = this.paramCode;
    data['paramName'] = this.paramName;
    data['paramDesc'] = this.paramDesc;
    return data;
  }
}
