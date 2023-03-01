import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RequestAdd extends StatelessWidget {
  const RequestAdd({Key? key}) : super(key: key);

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
                text: "Request /",
              ),
              TextSpan(
                text: "Add",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.all(32).copyWith(),
          padding: const EdgeInsets.all(14).copyWith(),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Container(
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Request Date",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 25,
                      child: TextField(
                        // controller: codeCo
                        //   ..text = data.settingGroupCode ?? '',
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Container(
                      child: Text(
                        "Request By",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 25,
                      child: TextField(
                        // controller: codeCo
                        //   ..text = data.settingGroupCode ?? '',
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Container(
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
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 25,
                      child: TextField(
                        // controller: codeCo
                        //   ..text = data.settingGroupCode ?? '',
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Container(
                      child: Text(
                        "Supported Type",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 23,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  right:
                                      MediaQuery.of(context).size.width / 100,
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
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Container(
                      child: Text(
                        "Supported Object",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 23,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  right:
                                      MediaQuery.of(context).size.width / 100,
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
                      ),
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
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          child: TextField(
                            // controller: getx.addReq.value.settingDescCo,
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
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Period Type",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 23,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  right:
                                      MediaQuery.of(context).size.width / 100,
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
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Container(
                      child: Text(
                        "Estimated Duration",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      child: TextField(
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
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Container(
                      child: Text(
                        "Estimated Start Date",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      child: TextField(
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
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Container(
                      child: Text(
                        "Estimated Finish Date",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 25,
                      child: TextField(
                        // controller: codeCo
                        //   ..text = data.settingGroupCode ?? '',
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Container(
                      child: Text(
                        "Attachment",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.height / 3.7,
                          color: Color(0xffEDF2F7),
                          child: Stack(
                            children: [
                              Positioned(
                                height: 200,
                                left: 150,
                                child: Container(
                                  child: Image(
                                    image: AssetImage(
                                      'assets/images/Vector.png',
                                    ),
                                    fit: BoxFit.none,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 40,
                              ),
                              Positioned(
                                left: 175,
                                bottom: 85,
                                child: Container(
                                  child: RichText(
                                    text: TextSpan(
                                      text: "Drag your file here or ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "Browse ",
                                          style: TextStyle(
                                            color: Color(0XFF3182CE),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              // TextField(
                              //   minLines: 9,
                              //   maxLines: 9,
                              //   decoration: InputDecoration(
                              //     enabled: false,
                              //     isDense: true,
                              //     filled: true,
                              //     fillColor: Color(0xffEDF2F7),
                              //     disabledBorder: OutlineInputBorder(
                              //       borderRadius: BorderRadius.circular(4),
                              //       borderSide: const BorderSide(
                              //         color: Color(0xffEDF2F7),
                              //       ),
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ],
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
                              "Delete File",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Row(
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
