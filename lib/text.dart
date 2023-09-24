import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyText extends StatelessWidget {
  String name;
  TextEditingController textEditingController;
  Icon iconName;
  MyText(
      {required this.name,
      required this.iconName,
      required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextFormField(
        controller: textEditingController,
        decoration: InputDecoration(
          suffixIcon: iconName,
          suffixIconColor: Colors.blue,
          hintText: name,
          hintStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: Colors.white)),
        ),
      ),
    );
  }
}
