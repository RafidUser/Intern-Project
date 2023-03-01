class inquirymenureq {
  String? menuCd;
  String? menuName;
  int? pageNumber;
  int? pageSize;
  String? parent;

  inquirymenureq({
    this.menuCd = '',
    this.menuName = '',
    this.pageNumber = 0,
    this.pageSize = 10,
    this.parent = '',
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['menuCd'] = this.menuCd;
    data['menuName'] = this.menuName;
    data['pageNumber'] = this.pageNumber;
    data['pageSize'] = this.pageSize;
    data['parent'] = this.parent;
    return data;
  }
}
