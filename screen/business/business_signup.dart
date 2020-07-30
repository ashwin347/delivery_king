import 'package:flutter/material.dart';
import 'package:delivery_king/screen/sharedwidgets.dart';
import 'package:delivery_king/screen/business/business_home.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: topbar(),
        drawer: drawer(context: context).getdrawer(),
        body: Container(
          child: Column(
            children: <Widget>[
              Text('hi'),
              Form(
                  key: _formKey,
                  child: Column(children: <Widget>[
                    TextFormField(validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),borderSide: BorderSide(color:Colors.lightBlue))

                      ),

                    ),
                    SizedBox(height: 50.0),
                    FlatButton(
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => otp()),
                        );
                      },
                      child: Text('Submit', style: TextStyle(color: Colors.white) ),
                    )
                  ]))
            ],
          ),
        ));
  }
}

class otp extends StatelessWidget{
  final _otp = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: topbar(),
        drawer: drawer(context: context).getdrawer(),
        body: Container(
          child: Column(
            children: <Widget>[
              Text('hi'),
              Form(
                  key: _otp,
                  child: Column(children: <Widget>[
                    TextFormField(validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),borderSide: BorderSide(color:Colors.lightBlue))

                      ),

                    ),
                    SizedBox(height: 50.0),
                    FlatButton(
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (context) => business(),
                          ),
                        );
                      },
                      child: Text('Verify', style: TextStyle(color: Colors.white) ),
                    )
                  ]))
            ],
          ),
        ));
  }
}