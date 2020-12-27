import 'package:flutter/material.dart';

Color primaryColor = Colors.blue[600];

class TranslateMain extends StatefulWidget {
  TranslateMain({Key key}) : super(key: key);
  _TranslateMainState createState() => _TranslateMainState();
}

class _TranslateMainState extends State<TranslateMain> {
  String _fromLanguage = '英语';
  String _toLanguage = '中文(简体)';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Material(
            color: Colors.white,
            child: InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(_fromLanguage, style: TextStyle(color: primaryColor)),
                  Icon(
                    Icons.arrow_drop_down,
                    color: primaryColor,
                  )
                ],
              ),
            ),
          )),
          Expanded(
              child: Material(
            color: Colors.white,
            child: IconButton(
              icon: Icon(Icons.compare_arrows),
              onPressed: () {},
              color: primaryColor,
            ),
          )),
          Expanded(
              child: Material(
            color: Colors.white,
            child: InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _toLanguage,
                    style: TextStyle(color: primaryColor),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: primaryColor,
                  )
                ],
              ),
            ),
          ))
        ],
      ),
      height: 55.0,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(width: 0.5, color: Colors.grey)),
      ),
    );
  }
}
