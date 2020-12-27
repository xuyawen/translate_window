import 'package:flutter/material.dart';
import 'package:translate_window/pages/drawer_page.dart';
import 'package:translate_window/translate/translate_main.dart';
import 'package:translate_window/translate/translate_textfield.dart';
import 'package:translate_window/translate/translate_record.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Google Translate'),
          elevation: 0.0,
        ),
        body: Container(
          color: Colors.grey[200],
          child: Column(
            children: [
              TranslateMain(),
              TranslateTextfield(),
              TranslateRecord(),
            ],
          ),
        ),
        drawer: DrawerPage(),
      ),
    );
  }
}
