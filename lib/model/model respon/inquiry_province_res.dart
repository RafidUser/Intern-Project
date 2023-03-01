import 'package:get/get_rx/src/rx_types/rx_types.dart';

class inquiryprovinceres {
  String? status;
  String? message;
  int? countData;
  List<ProvinceData>? data;

  inquiryprovinceres({
    this.status,
    this.message,
    this.countData,
    this.data = const [],
  });

  inquiryprovinceres.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    countData = json['countData'];
    if (json['data'] != null) {
      data = <ProvinceData>[];
      json['data'].forEach((v) {
        data!.add(new ProvinceData.fromJson(v));
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
}

class ProvinceData {
  String? createdBy;
  String? createdTime;
  String? updatedBy;
  String? updatedTime;
  String? provinceCd;
  String? provinceName;
  RxBool? checked;

  ProvinceData({
    this.createdBy,
    this.createdTime,
    this.updatedBy,
    this.updatedTime,
    this.provinceCd,
    this.provinceName,
    this.checked,
  });

  ProvinceData.fromJson(Map<String, dynamic> json) {
    createdBy = json['createdBy'];
    createdTime = json['createdTime'];
    updatedBy = json['updatedBy'];
    updatedTime = json['updatedTime'];
    provinceCd = json['provinceCd'];
    provinceName = json['provinceName'];
    checked = false.obs;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createdBy'] = this.createdBy;
    data['createdTime'] = this.createdTime;
    data['updatedBy'] = this.updatedBy;
    data['updatedTime'] = this.updatedTime;
    data['provinceCd'] = this.provinceCd;
    data['provinceName'] = this.provinceName;
    return data;
  }
}
