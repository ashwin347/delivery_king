import 'package:flutter/material.dart';
import 'package:delivery_king/screen/userprofile.dart';
import 'package:delivery_king/screen/sharedwidgets.dart';
class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}
search(){
  print('yes');
}
class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delivery King'),
        centerTitle: true,
      ),
      drawer: drawer(context: context).getdrawer(),
      floatingActionButton: FloatingActionButton(onPressed: search(),
        child: Icon(Icons.search),
    ),
    );
  }
}
