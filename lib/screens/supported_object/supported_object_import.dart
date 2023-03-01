import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:portal/screens/shared/loading_block.dart';

class SupportedObjectImport extends StatelessWidget {
  const SupportedObjectImport({Key? key}) : super(key: key);

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
                text: "Supported Object /",
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
                height: MediaQuery.of(context).size.height / 1.9,
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 3,
                      child: DottedBorder(
                        color: Colors.black,
                        strokeWidth: 0,
                        dashPattern: [10, 6],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Image(
                                image: AssetImage('assets/images/Vector.png'),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 40,
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
                                )),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 40,
                            ),
                            Container(
                              child: Text(
                                "Allowed file formats: xlsx",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 50,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.file_download_outlined,
                                color: Color(
                                  0XFF3182CE,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Download file template",
                                style: TextStyle(
                                  color: Color(
                                    0XFF3182CE,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.55,
                          child: Row(
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
