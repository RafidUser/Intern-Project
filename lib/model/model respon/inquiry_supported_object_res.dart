class inquirysupportedobjectres {
  String? status;
  String? message;
  int? countData;
  List<Data>? data;

  inquirysupportedobjectres({
    this.status,
    this.message,
    this.countData,
    this.data = const [],
  });

  inquirysupportedobjectres.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    countData = json['countData'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
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

class Data {
  String? createdBy;
  String? createdTime;
  String? updatedBy;
  String? updatedTime;
  String? objectCode;
  String? objectName;
  String? objectTypeCode;
  String? objectTypeName;
  String? description;
  String? companyName;
  String? companyId;

  Data(
      {this.createdBy,
      this.createdTime,
      this.updatedBy,
      this.updatedTime,
      this.objectCode,
      this.objectName,
      this.objectTypeCode,
      this.objectTypeName,
      this.description,
      this.companyName,
      this.companyId});

  Data.fromJson(Map<String, dynamic> json) {
    createdBy = json['createdBy'];
    createdTime = json['createdTime'];
    updatedBy = json['updatedBy'];
    updatedTime = json['updatedTime'];
    objectCode = json['objectCode'];
    objectName = json['objectName'];
    objectTypeCode = json['objectTypeCode'];
    objectTypeName = json['objectTypeName'];
    description = json['description'];
    companyName = json['companyName'];
    companyId = json['companyId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createdBy'] = this.createdBy;
    data['createdTime'] = this.createdTime;
    data['updatedBy'] = this.updatedBy;
    data['updatedTime'] = this.updatedTime;
    data['objectCode'] = this.objectCode;
    data['objectName'] = this.objectName;
    data['objectTypeCode'] = this.objectTypeCode;
    data['objectTypeName'] = this.objectTypeName;
    data['description'] = this.description;
    data['companyName'] = this.companyName;
    data['companyId'] = this.companyId;
    return data;
  }
}
