class inquirycompanyreq {
  String? business;
  String? companyCd;
  String? companyName;
  int? pageNumber;
  int? pageSize;

  inquirycompanyreq({
    this.business = '',
    this.companyCd = '',
    this.companyName = '',
    this.pageNumber = 0,
    this.pageSize = 10,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['business'] = this.business;
    data['companyCd'] = this.companyCd;
    data['companyName'] = this.companyName;
    data['pageNumber'] = this.pageNumber;
    data['pageSize'] = this.pageSize;
    return data;
  }
}
