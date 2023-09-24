import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  String name;
  Color colors;
  Function onClick;
  MyButton({required this.name, required this.colors, required this.onClick});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: MaterialButton(
        onPressed: () {
          onClick();
        },
        child: Text(
          name,
          style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        splashColor: Colors.white,
        color: colors,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        padding: EdgeInsets.all(15),
        elevation: 10,
      ),
    );
  }
}
