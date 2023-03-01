class inquirymenures {
  String? status;
  String? message;
  int? countData;
  List<MenuData>? data;

  inquirymenures({
    this.status,
    this.message,
    this.countData,
    this.data = const [],
  });

  inquirymenures.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    countData = json['countData'];
    if (json['data'] != null) {
      data = <MenuData>[];
      json['data'].forEach((v) {
        data!.add(new MenuData.fromJson(v));
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

class MenuData {
  String? createdBy;
  String? createdTime;
  String? updatedBy;
  String? updatedTime;
  String? menuCd;
  String? menuName;
  String? parent;
  String? type;
  String? url;
  String? parentId;
  String? action;

  MenuData(
      {this.createdBy,
      this.createdTime,
      this.updatedBy,
      this.updatedTime,
      this.menuCd,
      this.menuName,
      this.parent,
      this.type,
      this.url,
      this.parentId,
      this.action});

  MenuData.fromJson(Map<String, dynamic> json) {
    createdBy = json['createdBy'];
    createdTime = json['createdTime'];
    updatedBy = json['updatedBy'];
    updatedTime = json['updatedTime'];
    menuCd = json['menuCd'];
    menuName = json['menuName'];
    parent = json['parent'];
    type = json['type'];
    url = json['url'];
    parentId = json['parentId'];
    action = json['action'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createdBy'] = this.createdBy;
    data['createdTime'] = this.createdTime;
    data['updatedBy'] = this.updatedBy;
    data['updatedTime'] = this.updatedTime;
    data['menuCd'] = this.menuCd;
    data['menuName'] = this.menuName;
    data['parent'] = this.parent;
    data['type'] = this.type;
    data['url'] = this.url;
    data['parentId'] = this.parentId;
    data['action'] = this.action;
    return data;
  }
}
