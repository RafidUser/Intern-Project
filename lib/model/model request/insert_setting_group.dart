import 'package:flutter/cupertino.dart';

class InsertSettingGroup {
  String? groupCd;
  String? groupDesc;
  String? groupName;

  //HELPER
  TextEditingController? groupCdCo;
  TextEditingController? groupDescCo;
  TextEditingController? groupNameCo;

  InsertSettingGroup({
    this.groupCd,
    this.groupDesc,
    this.groupName,
  });

  InsertSettingGroup.init() {
    groupCdCo = TextEditingController();
    groupDescCo = TextEditingController();
    groupNameCo = TextEditingController();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['groupCd'] = this.groupCdCo!.text;
    data['groupDesc'] = this.groupDescCo!.text;
    data['groupName'] = this.groupNameCo!.text;
    return data;
  }
}
