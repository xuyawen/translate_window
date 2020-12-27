import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('xuyawen'),
            accountEmail: Text('xuyawenwy@163.com'),
            currentAccountPicture: null,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/translate_decoration.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          ListTile(
              title: Text('首页'),
              leading: Icon(Icons.home_filled),
              onTap: () {}),
          ListTile(
              title: Text('翻译历史'), leading: Icon(Icons.history), onTap: () {}),
          ListTile(
              title: Text('离线翻译'),
              leading: Icon(Icons.translate),
              onTap: () {}),
          ListTile(
              title: Text('设置'), leading: Icon(Icons.settings), onTap: () {}),
        ],
      ),
    );
  }
}
