class inquiryroleres {
  String? status;
  String? message;
  int? countData;
  List<RoleData>? data;

  inquiryroleres({
    this.status,
    this.message,
    this.countData,
    this.data = const [],
  });

  inquiryroleres.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    countData = json['countData'];
    if (json['data'] != null) {
      data = <RoleData>[];
      json['data'].forEach((v) {
        data!.add(new RoleData.fromJson(v));
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

class RoleData {
  String? createdBy;
  String? createdTime;
  String? updatedBy;
  String? updatedTime;
  String? roleCode;
  String? roleName;
  String? type;
  String? description;

  RoleData(
      {this.createdBy,
      this.createdTime,
      this.updatedBy,
      this.updatedTime,
      this.roleCode,
      this.roleName,
      this.type,
      this.description});

  RoleData.fromJson(Map<String, dynamic> json) {
    createdBy = json['createdBy'];
    createdTime = json['createdTime'];
    updatedBy = json['updatedBy'];
    updatedTime = json['updatedTime'];
    roleCode = json['roleCode'];
    roleName = json['roleName'];
    type = json['type'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createdBy'] = this.createdBy;
    data['createdTime'] = this.createdTime;
    data['updatedBy'] = this.updatedBy;
    data['updatedTime'] = this.updatedTime;
    data['roleCode'] = this.roleCode;
    data['roleName'] = this.roleName;
    data['type'] = this.type;
    data['description'] = this.description;
    return data;
  }
}
