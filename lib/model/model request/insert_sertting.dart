import 'package:flutter/cupertino.dart';

class InsertSetting {
  String? settingCode;
  String? settingDesc;
  String? settingGroupCode;
  String? settingValue;
  String? settingValueType;

//HELPER
  TextEditingController? settingGroupCodeCo;
  TextEditingController? settingCodeCo;
  TextEditingController? settingDescCo;
  TextEditingController? settingValueTypeCo;
  TextEditingController? settingValueCo;

  InsertSetting({
    this.settingCode,
    this.settingDesc,
    this.settingGroupCode,
    this.settingValue,
    this.settingValueType,
  });

  InsertSetting.init() {
    settingGroupCodeCo = TextEditingController();
    settingCodeCo = TextEditingController();
    settingDescCo = TextEditingController();
    settingValueTypeCo = TextEditingController();
    settingValueCo = TextEditingController();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['settingCode'] = this.settingGroupCodeCo!.text;
    data['settingDesc'] = this.settingCodeCo!.text;
    data['settingGroupCode'] = this.settingDescCo!.text;
    data['settingValue'] = this.settingValueTypeCo!.text;
    data['settingValueType'] = this.settingValueCo!.text;
    return data;
  }
}
