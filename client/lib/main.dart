import 'package:flutter/material.dart';
import 'package:client/screens/login.dart';
import 'package:client/screens/warehouses.dart';
import 'package:client/screens/requests.dart';
import 'package:client/screens/requestsList.dart';

void main() async {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/login',
    routes: {
      '/login': (context) => Login(),
      '/warehouses': (context) => Warehouses(),
      '/requests': (context) => Requests(),
      '/requestsList': (context) => RequestsList(),
    },
    theme: ThemeData(
        fontFamily: 'Gibson',
        accentColor: const Color(0xff60e7ff),
        textTheme: TextTheme(
            headline1: TextStyle(fontSize: 36.0, fontWeight: FontWeight.w500))),
  ));
}
