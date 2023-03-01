class inquirycityreq {
  String? cityCd;
  String? cityName;
  int? pageNumber;
  int? pageSize;
  String? provinceId;

  inquirycityreq({
    this.cityCd = '',
    this.cityName = '',
    this.pageNumber = 0,
    this.pageSize = 10,
    this.provinceId = '',
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cityCd'] = this.cityCd;
    data['cityName'] = this.cityName;
    data['pageNumber'] = this.pageNumber;
    data['pageSize'] = this.pageSize;
    data['provinceId'] = this.provinceId;
    return data;
  }
}
