import 'package:flutter/material.dart';

class SupportPICAssign extends StatelessWidget {
  const SupportPICAssign({Key? key}) : super(key: key);

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
                text: "Support PIC /",
              ),
              TextSpan(
                text: "Assign",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 32,
                right: 32,
                top: 32,
                bottom: 15,
              ),
              padding: const EdgeInsets.all(14).copyWith(),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 1,
                    child: Text(
                      "Company",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color(0XFFE2E8F0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              top: 2,
                            ),
                            child: Text(
                              "Company Code",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 100,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 3,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFE2E8F0),
                              ),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "DIFFICULT_LEVEL",
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
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 100,
                        width: MediaQuery.of(context).size.width / 70,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              top: 2,
                            ),
                            child: Text(
                              "Company Name",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 120,
                          ),
                          Container(
                            // height: 32,
                            width: MediaQuery.of(context).size.width / 2.57,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFE2E8F0),
                              ),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Difficulty Level Of Training",
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
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 30,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1,
                    child: Text(
                      "PIC",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color(0XFFE2E8F0),
                        ),
                      ),
                    ),
                  ),
                  Container(
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
                                      // getx.inquiryParameter();
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
                              width: MediaQuery.of(context).size.width / 120,
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
                                      // getx.inquiryParameter();
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
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 20,
                            bottom: 15,
                          ),
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(14).copyWith(),
                          decoration: BoxDecoration(
                            color: Color(0xFFF3F3F3),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Container(
                                  // child: Checkbox(
                                  //   // value: getx.checkAll.value,
                                  //   onChanged: (val) {},
                                  // ),
                                  ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 80,
                              ),
                              Container(
                                child: Text(
                                  "Parameter Detail Code",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 7,
                              ),
                              Container(
                                child: Text(
                                  "Parameter Detail Name",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 7,
                              ),
                              Container(
                                child: Text(
                                  "Description",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14).copyWith(),
                          child: Row(
                            children: [
                              // Checkbox(
                              //   value: getx.checkAll.value,
                              //   onChanged: (val) {},
                              // ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 80,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 4.6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Color(0xFFE2E8F0),
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "LEVEL_BEGINNER",
                                    hintStyle: TextStyle(
                                      fontSize: 15,
                                    ),
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 5,
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
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 50,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 4.6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Color(0XFFE2E8F0),
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Beginner",
                                    hintStyle: TextStyle(
                                      fontSize: 15,
                                    ),
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 5,
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
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 50,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 4.6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Color(0XFFE2E8F0),
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Beginner Level",
                                    hintStyle: TextStyle(
                                      fontSize: 15,
                                    ),
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 5,
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
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 14,
                            top: 5,
                          ).copyWith(),
                          child: Row(
                            children: [
                              // Checkbox(
                              //   value: getx.checkAll.value,
                              //   onChanged: (val) {},
                              // ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 80,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 4.6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Color(0xFFE2E8F0),
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "LEVEL_INTERMEDIATE",
                                    hintStyle: TextStyle(
                                      fontSize: 15,
                                    ),
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 5,
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
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 50,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 4.6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Color(0XFFE2E8F0),
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Intermediate",
                                    hintStyle: TextStyle(
                                      fontSize: 15,
                                    ),
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 5,
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
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 50,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 4.6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Color(0XFFE2E8F0),
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Intermediate Level",
                                    hintStyle: TextStyle(
                                      fontSize: 15,
                                    ),
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 5,
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
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 14,
                            top: 5,
                          ).copyWith(),
                          child: Row(
                            children: [
                              // Checkbox(
                              //   value: getx.checkAll.value,
                              //   onChanged: (val) {},
                              // ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 80,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 4.6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Color(0xFFE2E8F0),
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "LEVEL_ADVANCE",
                                    hintStyle: TextStyle(
                                      fontSize: 15,
                                    ),
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 5,
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
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 50,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 4.6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Color(0XFFE2E8F0),
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Advance",
                                    hintStyle: TextStyle(
                                      fontSize: 15,
                                    ),
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 5,
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
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 50,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 4.6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Color(0XFFE2E8F0),
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Advance Level",
                                    hintStyle: TextStyle(
                                      fontSize: 15,
                                    ),
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 5,
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
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
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
                                      side: BorderSide(
                                        color: Color(0xFF3182CE),
                                      ),
                                    ),
                                    onPressed: () {
                                      // getx.inquiryParameter();
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
                              width: MediaQuery.of(context).size.width / 120,
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
                                      // getx.inquiryParameter();
                                    },
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
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
