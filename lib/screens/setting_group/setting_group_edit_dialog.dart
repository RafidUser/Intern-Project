import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portal/getx/setting_group_getx.dart';
import 'package:portal/model/model%20request/insert_setting_group.dart';
import 'package:portal/model/model%20respon/inquiry_setting_group_res.dart';
import 'package:portal/screens/shared/loading_block.dart';

class EditSettingGroup extends StatelessWidget {
  final SettingGroupData data;
  EditSettingGroup({Key? key, required this.data}) : super(key: key);
  final codeCo = TextEditingController();
  final nameCo = TextEditingController();
  final descCo = TextEditingController();
  final getx = Get.find<SettingGroupGet>();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        height: MediaQuery.of(context).size.height,
        child: LoadingBlock(
          loadingStream: getx.dialogLoad.stream,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "Setting Group - Edit",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          child: Icon(Icons.close_rounded),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Setting Group Code",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D3748),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 40,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 16,
                        width: MediaQuery.of(context).size.width / 2,
                        child: TextField(
                          controller: codeCo
                            ..text = data.settingGroupCode ?? '',
                          decoration: InputDecoration(
                            enabled: false,
                            isDense: true,
                            filled: true,
                            fillColor: Color(0xffEDF2F7),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: const BorderSide(
                                color: Color(0xffEDF2F7),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Setting Group Name",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 40,
                      ),
                      TextField(
                        controller: nameCo..text = data.settingGroupName ?? '',
                        decoration: InputDecoration(
                          isDense: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(
                              color: Color(0XFFE2E8F0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(
                              color: Color(0XFFEDF2F7),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Description",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 40,
                      ),
                      TextField(
                        controller: descCo..text = data.settingGroupDesc ?? '',
                        minLines: 5,
                        maxLines: 5,
                        decoration: InputDecoration(
                          isDense: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(
                              color: Color(0XFFE2E8F0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(
                              color: Color(0XFFEDF2F7),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 22),
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              minHeight: 32,
                              minWidth: 100,
                            ),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                side: BorderSide(
                                  color: Color(0xFF3182CE),
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF3182CE),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 22),
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              minHeight: 32,
                              minWidth: 100,
                            ),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Color(
                                  0xFF3182CE,
                                ),
                              ),
                              onPressed: () {
                                var submit = InsertSettingGroup();
                                submit.groupCdCo = codeCo;
                                submit.groupNameCo = nameCo;
                                submit.groupDescCo = descCo;
                                getx.updatedSettingGroup(submit);
                              },
                              child: Text(
                                "Save",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
