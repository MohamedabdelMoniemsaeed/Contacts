import 'package:contacts/button.dart';
import 'package:contacts/contactWidget.dart';
import 'package:contacts/data.dart';
import 'package:contacts/text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Contacts());
}

class Contacts extends StatefulWidget {
  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  int curIndex = 0;

  List<DataContact> contact = [
    DataContact(name: "", Phones: ""),
    DataContact(name: "", Phones: ""),
    DataContact(name: "", Phones: ""),
  ];

  TextEditingController nameText = TextEditingController();

  TextEditingController phoneText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 150, 149, 192),
        appBar: AppBar(
          title: const Text(
            "Contacts Screen",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(height: 10),
            MyText(
              name: "Enter Your Name Here",
              iconName: Icon(Icons.edit),
              textEditingController: nameText,
            ),
            SizedBox(height: 10),
            MyText(
              name: "Enter Your Number Here",
              iconName: Icon(Icons.phone),
              textEditingController: phoneText,
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                    child: MyButton(
                  name: "Add",
                  colors: Colors.blue,
                  onClick: () {
                    clickOnAddButton();
                  },
                )),
                Expanded(
                    child: MyButton(
                  name: "Delete",
                  colors: Colors.red,
                  onClick: () {
                    clickOnDeleteButton();
                  },
                )),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
                child: ListView(
              children: [
                ContactWidget(datacontact: contact[0]),
                ContactWidget(datacontact: contact[1]),
                ContactWidget(datacontact: contact[2]),
              ],
            )),
          ],
        ),
      ),
    );
  }

  void clickOnAddButton() {
    contact[curIndex].name = nameText.text;
    contact[curIndex].Phones = phoneText.text;
    if (curIndex < 2) {
      curIndex++;
    }

    setState(() {});
  }

  void clickOnDeleteButton() {
    contact[curIndex].name = "";
    contact[curIndex].Phones = "";
    if (curIndex > 0) {
      curIndex--;
    }

    setState(() {});
  }
}
