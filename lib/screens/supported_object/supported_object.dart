import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:portal/getx/supported_object_getx.dart';
import 'package:portal/screens/shared/loading_block.dart';
import 'package:portal/screens/supported_object/supported_object_add_dialog.dart';
import 'package:portal/screens/supported_object/supported_object_edit_dialog.dart';
import 'package:portal/screens/supported_object/supported_object_import.dart';
import 'package:portal/screens/table/supported_object_table.dart';

class SupportedObject extends StatelessWidget {
  SupportedObject({Key? key}) : super(key: key);

  final getx = Get.put(SupportedObjectGet());

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
                text: "Supported Object",
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
                              "Object Type",
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 120,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            height: MediaQuery.of(context).size.height / 23,
                            child: TextField(
                              // controller: getx.provinceCo,
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
                                // getx.reqVal.provinceId = value;
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
                              "Object Name",
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 120,
                          ),
                          TextField(
                            // controller: getx.cityCodeCo,
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
                              // getx.reqVal.cityCd = value;
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
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
                              "Company",
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 120,
                          ),
                          TextField(
                            // controller: getx.cityNameCo,
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
                              // getx.reqVal.cityName = value;
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
                              getx..inquiryCity();
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
                              // getx.req.value = inquirycityreq();
                              getx.inquiryCity();
                              // getx.provinceCo.clear();
                              // getx.cityCodeCo.clear();
                              // getx.cityNameCo.clear();
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
                                  Get.dialog(SupportedObjectAddDialog());
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
                                  side: BorderSide(
                                    color: Color(0xFF3182CE),
                                  ),
                                ),
                                onPressed: () {
                                  Get.dialog(SupportedObjectEditDialog());
                                },
                                child: Text(
                                  "Edit",
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
                                  side: BorderSide(
                                    color: Color(0xFF3182CE),
                                  ),
                                ),
                                onPressed: () {
                                  print("dapet Delete");
                                },
                                child: Text(
                                  "Delete",
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
                          width: 600,
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
                                  Get.dialog(SupportedObjectImport());
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
                                onPressed: () {},
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
                    SupportedObjectTable(),
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
