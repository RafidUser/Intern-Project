import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension RxBoolEx on RxBool? {
  void toogle() {
    if ((this) != null) {
      if ((this)!.value == true) {
        (this)!(false);
      } else {
        (this)!(true);
      }
    }
  }
}

extension GetInterfaceEx on GetInterface {
  void error(String message) {
    (this).snackbar(
      "ERROR",
      message,
      borderRadius: 8,
      backgroundColor: Colors.redAccent,
      colorText: Colors.white,
    );
  }
}
