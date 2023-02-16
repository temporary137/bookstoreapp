import 'dart:convert';
import 'theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:bookstore/data/json.dart';
import 'pages/home.dart';
import 'package:http/http.dart' as http;

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: primary
      ),
      home: Home(),
    );
  }
}
