// @dart=2.9
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:assesment/services.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  APIService apiService = APIService();
// You future
  Future future;
//in the initState() or use it how you want...
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = apiService.get(endpoint:"GET",query:{"radius":"100"});
  }


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body: Container(
        color: Colors.white,

      ),
    );
  }
}