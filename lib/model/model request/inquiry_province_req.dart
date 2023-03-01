class inquiryprovincereq {
  int? pageNumber;
  int? pageSize;
  String? provinceCd;
  String? provinceName;

  inquiryprovincereq({
    this.pageNumber = 0,
    this.pageSize = 10,
    this.provinceCd = '',
    this.provinceName = '',
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pageNumber'] = this.pageNumber;
    data['pageSize'] = this.pageSize;
    data['provinceCd'] = this.provinceCd;
    data['provinceName'] = this.provinceName;
    return data;
  }
}
