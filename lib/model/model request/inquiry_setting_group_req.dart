class inquirysettinggroupreq {
  String? groupCd;
  String? groupName;
  int? pageNumber;
  int? pageSize;

  inquirysettinggroupreq({
    this.groupCd = '',
    this.groupName = '',
    this.pageNumber = 0,
    this.pageSize = 10,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['groupCd'] = this.groupCd;
    data['groupName'] = this.groupName;
    data['pageNumber'] = this.pageNumber;
    data['pageSize'] = this.pageSize;
    return data;
  }
}
