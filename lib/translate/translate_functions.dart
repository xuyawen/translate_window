import 'package:flutter/material.dart';

class TranslateFunctions extends StatefulWidget {
  _TranslateFunctionsState createState() => _TranslateFunctionsState();
}

class _TranslateFunctionsState extends State<TranslateFunctions> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FunctionsButton(
          title: '相机',
          icon: Icons.camera_alt,
        ),
        FunctionsButton(title: '手写', icon: Icons.create),
        FunctionsButton(title: '对话', icon: Icons.record_voice_over),
        FunctionsButton(
          title: '语音',
          icon: Icons.keyboard_voice,
        ),
      ],
    );
  }
}

class FunctionsButton extends StatefulWidget {
  final String title;
  final IconData icon;
  final AssetImage image;

  FunctionsButton({Key key, @required this.title, this.icon, this.image})
      : super(key: key);
  _FunctionsButtonState createState() => _FunctionsButtonState();
}

class _FunctionsButtonState extends State<FunctionsButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        padding:
            EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
        onPressed: () {},
        child: Column(
          children: [
            Expanded(child: _customButton()),
            Text(
              widget.title,
              style: TextStyle(color: Colors.black, fontSize: 15.0),
            )
          ],
        ));
  }

  Widget _customButton() {
    if (widget.icon != null) {
      return Icon(
        widget.icon,
        color: Color(0xff3F51B5),
        size: 25.0,
      );
    } else if (widget.image != null) {
      return ImageIcon(
        widget.image,
        color: Color(0xff3F51B5),
        size: 25.0,
      );
    } else {
      return Container();
    }
  }
}
