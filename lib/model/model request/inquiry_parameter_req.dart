class inquiryparameterreq {
  int? pageNumber;
  int? pageSize;
  String? param;
  String? paramGroupCode;
  String? paramGroupName;

  inquiryparameterreq({
    this.pageNumber = 0,
    this.pageSize = 10,
    this.param = '',
    this.paramGroupCode = '',
    this.paramGroupName = '',
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pageNumber'] = this.pageNumber;
    data['pageSize'] = this.pageSize;
    data['param'] = this.param;
    data['paramGroupCode'] = this.paramGroupCode;
    data['paramGroupName'] = this.paramGroupName;
    return data;
  }
}
