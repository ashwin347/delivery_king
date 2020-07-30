import 'package:flutter/material.dart';
import 'package:delivery_king/screen/initial.dart';
import 'package:delivery_king/screen/home/home_main.dart';
import 'package:delivery_king/screen/userprofile.dart';
import 'package:delivery_king/screen/business/business_home.dart';
import 'package:delivery_king/screen/business/business_signup.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/' : (context) => business(),
      '/homepage':(context) => home(),
      '/userprofile':(context) => userprofile(),
      '/business':(context)=> business(),
      '/business_signup':(context)=> signup(),
    },
  ));
}