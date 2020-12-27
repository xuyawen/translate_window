import 'package:flutter/material.dart';
import 'package:translate_window/types/translate_type.dart';

Color primaryColor = Colors.blue[600];

class TranslateRecord extends StatefulWidget {
  _TranslateRecordState createState() => _TranslateRecordState();
}

class _TranslateRecordState extends State<TranslateRecord> {
  List<Translate> _recordList = [
    Translate('darwer', '抽屉', true),
    Translate('title', '副标题', false),
    Translate('title', '副标题', false),
    Translate('title', '副标题', false),
    Translate('title', '副标题', false),
    Translate('title', '副标题', false),
    Translate('title', '副标题', false),
    Translate('title', '副标题', false),
    Translate('title', '副标题', false),
    Translate('title', '副标题', false),
    Translate('title', '副标题', false),
    Translate('title', '副标题', false),
    Translate('title', '副标题', false),
    Translate('title', '副标题', false),
    Translate('title', '副标题', false),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 361,
      margin: EdgeInsets.only(top: 20.0),
      child: ListView.builder(
        itemCount: _recordList.length,
        itemBuilder: (context, index) {
          return _widgetList(_recordList[index]);
        },
      ),
    );
  }

  Widget _widgetList(Translate record) {
    return Container(
      padding: EdgeInsets.only(left: 2.0, right: 2.0, bottom: 2.0),
      child: Card(
        margin: EdgeInsets.only(left: 8.0, right: 8.0),
        shadowColor: Colors.grey[100],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(0.0))),
        child: Container(
          padding: EdgeInsets.all(15.0),
          height: 80.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    record.title,
                    style: Theme.of(context).textTheme.headline6,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    record.subtitle,
                    style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              )),
              Icon(
                record.isCollection ? Icons.star : Icons.star_border,
                color: primaryColor,
                size: 35.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
