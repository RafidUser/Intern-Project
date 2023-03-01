import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portal/getx/setting_getx.dart';
import 'package:portal/model/model%20request/inquiry_setting_req.dart';
import 'package:portal/model/model%20request/insert_sertting.dart';
import 'package:portal/screens/setting/setting_add_dialog.dart';
import 'package:portal/screens/setting/setting_edit_dialog.dart';
import 'package:portal/screens/setting/setting_import.dart';
import 'package:portal/screens/shared/loading_block.dart';
import 'package:portal/screens/table/setting_table.dart';

class Setting extends StatelessWidget {
  Setting({Key? key}) : super(key: key);

  final getx = Get.put(SettingGet());

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
                text: "Setting",
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
                height: 84,
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
                              "Setting Group",
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 120,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            height: MediaQuery.of(context).size.height / 23,
                            child: TextField(
                              controller: getx.settinggroupCo,
                              decoration: InputDecoration(
                                prefixIcon: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                        right:
                                            MediaQuery.of(context).size.width /
                                                100,
                                      ),
                                      child: Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
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
                                getx.reqVal.settingGroup = value;
                              },
                            ),
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
                              "Setting Code",
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 120,
                          ),
                          TextField(
                            controller: getx.settingcodeCo,
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
                              getx.reqVal.settingCode = value;
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
                              "Value",
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          TextField(
                            controller: getx.settingValueCo,
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
                              getx.reqVal.value = value;
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
                              getx.inquirySetting();
                              print("dapet search");
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
                      height: MediaQuery.of(context).size.height / 20,
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
                              getx.req.value = inquirysettingreq();
                              getx.inquirySetting();
                              getx.settinggroupCo.clear();
                              getx.settingcodeCo.clear();
                              getx.settingValueCo.clear();
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
                margin: EdgeInsets.all(32),
                padding: const EdgeInsets.all(14).copyWith(
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
                                  getx.addReq.value = InsertSetting.init();
                                  Get.dialog(
                                    AddSettingDialog(),
                                  ).then((value) {
                                    getx.inquirySetting();
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
                                        ? Color(0XFF3182CE)
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
                                      Get.dialog(EditSetting(
                                        data: x.elementAt(0),
                                      )).then((value) {
                                        getx.inquirySetting();
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
                                      getx.deleteSetting();
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
                                  showDialog(
                                    context: Get.context!,
                                    builder: (context) {
                                      return SettingImport();
                                    },
                                  );
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
                                minHeight: 12,
                                minWidth: 200,
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
                    SettingTable(),
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
