import 'package:flutter/material.dart';
import 'package:delivery_king/screen/userprofile.dart';
import 'package:delivery_king/backend/business_auth.dart';

class drawer {
  BuildContext context;
  drawer({this.context});
  getdrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('About Me'),
            onTap: () =>
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => userprofile()),
                ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Manage business'),
            onTap: () => {
              if(check_business_login())
                Navigator.popAndPushNamed(context, '/business')
            else
    Navigator.popAndPushNamed(context, '/business_signup')
            }

          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}
topbar() {
  return AppBar(
    title: Text('Delivery King'),
    centerTitle: true,
  );
}