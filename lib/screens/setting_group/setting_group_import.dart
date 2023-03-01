import 'dart:html';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:get/get.dart';
import 'package:portal/getx/setting_group_getx.dart';
import 'package:portal/model/model%20request/inquiry_setting_group_req.dart';
import 'package:portal/screens/shared/loading_block.dart';

class SettingGroupImport extends StatelessWidget {
  SettingGroupImport({
    Key? key,
  }) : super(key: key);

  final getx = Get.put(SettingGroupGet());

  inquirysettinggroupreq? acceptFile;

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
              TextSpan(
                text: "Master /",
              ),
              TextSpan(
                text: "Setting Group /",
              ),
              TextSpan(
                text: "Import",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: LoadingBlock(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // height: 84,
                margin: EdgeInsets.all(16),
                padding: const EdgeInsets.all(8).copyWith(),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () async {
                        final events = await getx.controller.pickFiles();
                        if (events.isEmpty) return;

                        getx.acceptFile(events.first);
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height / 3,
                        child: DottedBorder(
                          color: Colors.black,
                          strokeWidth: 0,
                          dashPattern: [10, 6],
                          child: Stack(
                            children: [
                              DropzoneView(
                                onDrop: getx.acceptFile,
                                onCreated: (controller) =>
                                    this.getx.controller = controller,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/Vector.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 40,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: RichText(
                                          text: TextSpan(
                                            text: "Drag and drop or ",
                                            children: [
                                              TextSpan(
                                                text: "Browse ",
                                                style: TextStyle(
                                                  color: Color(0XFF3182CE),
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Your file here",
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 40,
                                  ),
                                  Container(
                                    child: Text(
                                      "Allowed file formats: xlsx",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height / 50,
                    // ),
                    // InkWell(
                    //   onTap: () {},
                    //   child: Container(
                    //     width: 50,
                    //     height: 50,
                    //     decoration: BoxDecoration(
                    //         border: Border.all(color: Colors.black)),
                    //   ),
                    // ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 50,
                    ),

                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height / 50,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            getx.downloadUserTemplate();
                          },
                          child: Container(
                            padding: EdgeInsets.all(8),
                            // color: Colors.yellow,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.file_download_outlined,
                                  color: Color(
                                    0XFF3182CE,
                                  ),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "Download file template",
                                  style: TextStyle(
                                    color: Color(
                                      0XFF3182CE,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
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
                                  onPressed: () {},
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
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 100,
                            ),
                            Padding(
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
                                    "Submit",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
