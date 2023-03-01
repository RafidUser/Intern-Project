class inquiryrolereq {
  int? pageNumber;
  int? pageSize;
  String? roleCode;
  String? roleName;

  inquiryrolereq({
    this.pageNumber = 1,
    this.pageSize = 10,
    this.roleCode = '',
    this.roleName = '',
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pageNumber'] = this.pageNumber;
    data['pageSize'] = this.pageSize;
    data['roleCode'] = this.roleCode;
    data['roleName'] = this.roleName;
    return data;
  }
}
