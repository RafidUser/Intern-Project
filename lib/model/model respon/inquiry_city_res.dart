import 'package:get/get.dart';

class inquirycityres {
  String? status;
  String? message;
  int? countData;
  List<CityData>? data;

  inquirycityres({
    this.status,
    this.message,
    this.countData,
    this.data = const [],
  });

  inquirycityres.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    countData = json['countData'];
    if (json['data'] != null) {
      data = <CityData>[];
      json['data'].forEach((v) {
        data!.add(new CityData.fromJson(v));
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

class CityData {
  String? createdBy;
  String? createdTime;
  String? updatedBy;
  String? updatedTime;
  String? provinceCode;
  String? cityCd;
  String? cityName;
  String? provinceId;
  RxBool? checked;
  // List<ListCity>? listCity;

  CityData({
    this.createdBy,
    this.createdTime,
    this.updatedBy,
    this.updatedTime,
    this.provinceCode,
    this.cityCd,
    this.cityName,
    this.provinceId,
    this.checked,
  });

  CityData.fromJson(Map<String, dynamic> json) {
    createdBy = json['createdBy'];
    createdTime = json['createdTime'];
    updatedBy = json['updatedBy'];
    updatedTime = json['updatedTime'];
    provinceCode = json['provinceCode'];
    cityCd = json['cityCd'];
    cityName = json['cityName'];
    provinceId = json['provinceId'];
    checked = false.obs;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createdBy'] = this.createdBy;
    data['createdTime'] = this.createdTime;
    data['updatedBy'] = this.updatedBy;
    data['updatedTime'] = this.updatedTime;
    data['provinceCode'] = this.provinceCode;
    data['cityCd'] = this.cityCd;
    data['cityName'] = this.cityName;
    data['provinceId'] = this.provinceId;
    return data;
  }
}
