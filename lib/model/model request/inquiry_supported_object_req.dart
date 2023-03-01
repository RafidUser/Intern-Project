class inquirysupportedobjectreq {
  String? companyName;
  String? objectName;
  String? objectType;
  int? pageNumber;
  int? pageSize;

  inquirysupportedobjectreq({
    this.companyName = '',
    this.objectName = '',
    this.objectType = '',
    this.pageNumber = 0,
    this.pageSize = 10,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['companyName'] = this.companyName;
    data['objectName'] = this.objectName;
    data['objectType'] = this.objectType;
    data['pageNumber'] = this.pageNumber;
    data['pageSize'] = this.pageSize;
    return data;
  }
}
