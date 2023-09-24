import 'package:contacts/data.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContactWidget extends StatelessWidget {
  DataContact datacontact;
  ContactWidget({
    required this.datacontact,
  });
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: datacontact.name.isNotEmpty && datacontact.Phones.isNotEmpty,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(50)),
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(10),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name: ${datacontact.name}",
              style:const TextStyle(
                fontSize: 24,
              ),
            ),
            Text(
              "Phone: ${datacontact.Phones}",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
