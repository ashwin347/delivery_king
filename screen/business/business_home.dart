import 'package:flutter/material.dart';
import 'package:delivery_king/screen/sharedwidgets.dart';
class business extends StatefulWidget {
  @override
  _businessinfoState createState() => _businessinfoState();
}

class  _businessinfoState extends State<business> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topbar(),
      drawer: drawer(context: context).getdrawer(),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: _choose,
                  child: Text('Choose Image'),
                ),
                SizedBox(width: 10.0),
                RaisedButton(
                  onPressed: _upload,
                  child: Text('Upload Image'),
                )
              ],
            ),
            file == null
                ? Text('No Image Selected')
                : Image.file(file)
          ],
        ),
      ),
    );
  }
}
