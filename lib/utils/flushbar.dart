import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class FlushbarMsg {
  static dialog(context, title, msg) {
    Flushbar(
      backgroundColor: Colors.black,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      borderRadius: BorderRadius.circular(10),
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      title: title,
      message: msg,
      duration: Duration(seconds: 3),
      icon: Icon(
        Icons.error,
        color: Colors.yellow,
      ),
    )..show(context);
  }
}
