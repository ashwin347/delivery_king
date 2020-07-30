import 'package:flutter/material.dart';
import 'package:delivery_king/screen/sharedwidgets.dart';
class userprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(),
      drawer: drawer(context: context).getdrawer(),
      body: Column(
        children: <Widget>[
      Center(
      child: Container(
        width: 140.0,
        height: 140.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/userdefault.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(80.0),
          border: Border.all(
            color: Colors.white,
            width: 10.0,
          ),
        ),
      ),
    ),
          Text('hi')
        ],
      ),
    );
  }
}
