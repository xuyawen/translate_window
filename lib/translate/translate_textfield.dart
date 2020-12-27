import 'package:flutter/material.dart';
import 'package:translate_window/translate/translate_functions.dart';

Color primaryColor = Colors.blue[600];

class TranslateTextfield extends StatefulWidget {
  _TranslateTextfieldState createState() => _TranslateTextfieldState();
}

class _TranslateTextfieldState extends State<TranslateTextfield> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      margin: EdgeInsets.all(0.0),
      child: Container(
        height: 230.0,
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.all(0.0),
          child: Column(
            children: [
              Expanded(
                  child: Container(
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.only(
                    left: 18.0, right: 18.0, bottom: 10.0, top: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '点按即可输入文本',
                  ),
                  style: TextStyle(color: Colors.black, fontSize: 25.0),
                  maxLines: 999,
                  cursorColor: Colors.black,
                  cursorWidth: 2.0,
                ),
              )),
              Container(
                height: 80.0,
                padding: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 10.0),
                child: TranslateFunctions(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
