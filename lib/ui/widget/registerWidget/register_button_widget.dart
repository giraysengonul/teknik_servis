import 'package:flutter/material.dart';

final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
RaisedButton rButton = RaisedButton(
  color: Colors.teal,
  onPressed: () {
    if (_formkey.currentState!.validate()) {
      print("Tamamlandı");

      return;
    } else {
      print("Tamamlanmadı");
    }
  },
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50.0),
      side: BorderSide(color: Colors.grey, width: 2)),
  textColor: Colors.white,
  child: Text("Kayıt Ol"),
);
