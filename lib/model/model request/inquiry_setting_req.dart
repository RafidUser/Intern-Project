class inquirysettingreq {
  int? pageNumber;
  int? pageSize;
  String? settingCode;
  String? settingGroup;
  String? value;

  inquirysettingreq({
    this.pageNumber = 0,
    this.pageSize = 10,
    this.settingCode = '',
    this.settingGroup = '',
    this.value = '',
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pageNumber'] = this.pageNumber;
    data['pageSize'] = this.pageSize;
    data['settingCode'] = this.settingCode;
    data['settingGroup'] = this.settingGroup;
    data['value'] = this.value;
    return data;
  }
}
