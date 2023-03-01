class inquirycompanyres {
  String? status;
  String? message;
  int? countData;
  List<Data>? data;

  inquirycompanyres({
    this.status,
    this.message,
    this.countData,
    this.data = const [],
  });

  inquirycompanyres.fromJson(Map<String, dynamic> json) {
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
  String? companyCd;
  String? companyName;
  String? type;
  String? business;
  String? address;
  String? cityId;
  String? companyType;
  String? companyBusiness;
  String? provinceName;

  Data(
      {this.createdBy,
      this.createdTime,
      this.updatedBy,
      this.updatedTime,
      this.companyCd,
      this.companyName,
      this.type,
      this.business,
      this.address,
      this.cityId,
      this.companyType,
      this.companyBusiness,
      this.provinceName});

  Data.fromJson(Map<String, dynamic> json) {
    createdBy = json['createdBy'];
    createdTime = json['createdTime'];
    updatedBy = json['updatedBy'];
    updatedTime = json['updatedTime'];
    companyCd = json['companyCd'];
    companyName = json['companyName'];
    type = json['type'];
    business = json['business'];
    address = json['address'];
    cityId = json['cityId'];
    companyType = json['companyType'];
    companyBusiness = json['companyBusiness'];
    provinceName = json['provinceName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createdBy'] = this.createdBy;
    data['createdTime'] = this.createdTime;
    data['updatedBy'] = this.updatedBy;
    data['updatedTime'] = this.updatedTime;
    data['companyCd'] = this.companyCd;
    data['companyName'] = this.companyName;
    data['type'] = this.type;
    data['business'] = this.business;
    data['address'] = this.address;
    data['cityId'] = this.cityId;
    data['companyType'] = this.companyType;
    data['companyBusiness'] = this.companyBusiness;
    data['provinceName'] = this.provinceName;
    return data;
  }
}
