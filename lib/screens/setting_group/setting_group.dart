import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portal/getx/setting_group_getx.dart';
import 'package:portal/model/model%20request/inquiry_setting_group_req.dart';
import 'package:portal/model/model%20request/insert_setting_group.dart';
import 'package:portal/screens/setting_group/setting_group_add_dialog.dart';
import 'package:portal/screens/setting_group/setting_group_edit_dialog.dart';
import 'package:portal/screens/setting_group/setting_group_import.dart';
import 'package:portal/screens/shared/loading_block.dart';
import 'package:portal/screens/table/setting_group_table.dart';

class SettingGroup extends StatelessWidget {
  SettingGroup({Key? key}) : super(key: key);

  final getx = Get.put(SettingGroupGet());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: RichText(
          text: TextSpan(
            text: "Home /",
            children: [
              TextSpan(text: "Master /"),
              TextSpan(
                text: "Setting Group",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: LoadingBlock(
        loadingStream: getx.screenLoad.stream,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(32),
                padding: const EdgeInsets.all(14).copyWith(),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              top: 2,
                            ),
                            child: Text(
                              "Setting Group Code",
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 120,
                          ),
                          TextField(
                            controller: getx.groupCodeCo,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 10,
                              ),
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
                            onChanged: (value) {
                              getx.reqVal.groupCd = value;
                            },
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 20,
                      width: MediaQuery.of(context).size.width / 80,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              top: 2,
                            ),
                            child: Text(
                              "Setting Group Name",
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 120,
                          ),
                          TextField(
                            controller: getx.groupNameCo,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 10,
                              ),
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
                            onChanged: (value) {
                              getx.reqVal.groupName = value;
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 80,
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
                              getx.inquirySettingGroup();
                            },
                            child: Text(
                              "Search",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 80,
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
                              side: BorderSide(
                                color: Color(0xFF3182CE),
                              ),
                            ),
                            onPressed: () {
                              getx.req.value = inquirysettinggroupreq();
                              getx.inquirySettingGroup();
                              getx.groupCodeCo.clear();
                              getx.groupNameCo.clear();
                            },
                            child: Text(
                              "Clear",
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF3182CE),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                padding: const EdgeInsets.all(13).copyWith(
                  top: 0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      children: [
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
                                  // showDialog(
                                  //   context: Get.context!,
                                  //   builder: (context) {
                                  //     return AddSettinggroup();
                                  //   },
                                  // );
                                  getx.addReq.value = InsertSettingGroup.init();
                                  Get.dialog(
                                    AddSettinggroup(),
                                  ).then((value) {
                                    getx.inquirySettingGroup();
                                  });
                                },
                                child: Text(
                                  "Add",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 80,
                        ),
                        Flexible(
                          child: Obx(() {
                            return Padding(
                              padding: const EdgeInsets.only(top: 22),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  minHeight: 32,
                                  minWidth: 100,
                                ),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: getx.canEdit
                                        ? Color(0xFF3182CE)
                                        : Colors.white,
                                    side: BorderSide(
                                      color: getx.canEdit
                                          ? Colors.white
                                          : Color(0xFF3182CE),
                                    ),
                                  ),
                                  onPressed: () {
                                    if (getx.canEdit) {
                                      var o = getx.res.value.data ?? [];
                                      var x = o.where((e) => e.checked!.value);
                                      Get.dialog(EditSettingGroup(
                                        data: x.elementAt(0),
                                      )).then((value) {
                                        getx.inquirySettingGroup();
                                      });
                                    }
                                  },
                                  child: Text(
                                    "Edit",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: getx.canEdit
                                          ? Colors.white
                                          : Color(0xFF3182CE),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 80,
                        ),
                        Flexible(
                          child: Obx(() {
                            return Padding(
                              padding: const EdgeInsets.only(top: 22),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  minHeight: 32,
                                  minWidth: 100,
                                ),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: getx.canDelete
                                        ? Color(0xFF3182CE)
                                        : Colors.white,
                                    side: BorderSide(
                                      color: getx.canDelete
                                          ? Colors.white
                                          : Color(0xFF3182CE),
                                    ),
                                  ),
                                  onPressed: () {
                                    if (getx.canDelete) {
                                      getx.deleteSettingGroup();
                                    }
                                  },
                                  child: Text(
                                    "Delete",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: getx.canDelete
                                          ? Colors.white
                                          : Color(0xFF3182CE),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2.5,
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
                                  side: BorderSide(
                                    color: Color(0xFF3182CE),
                                  ),
                                ),
                                onPressed: () {
                                  Get.dialog(
                                    SettingGroupImport(),
                                  ).then((value) {
                                    getx.inquirySettingGroup();
                                  });
                                },
                                child: Text(
                                  "Import",
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
                          width: MediaQuery.of(context).size.width / 80,
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
                                  print("dapet Download");
                                },
                                child: Text(
                                  "Download",
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
                    SettingGroupTable(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
