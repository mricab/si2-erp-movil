import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:client/utils/network.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:client/screens/home.dart';
import 'package:client/screens/login.dart';

final _URL = 'http://127.0.0.1:8000/api';

Future<void> login(BuildContext context, String email, String password) async {
  //Api address
  Network networkMgr = new Network(_URL);
  SharedPreferences localStorage = await SharedPreferences.getInstance();

  // Prepare data
  String apiURL = '/auth/login';
  Map data = {
    'email': email,
    'password': password,
    //'device_token': localStorage.getString('device_token'),
  };

  // Send request
  var response = await networkMgr.postRequest(data, apiURL);
  var body = json.decode(response.body);
  print(body);

  // Return status
  if (body['success']) {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    localStorage.setString('token', json.encode(body['token']));
    localStorage.setString('user', json.encode(body['user']));
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => Home()),
    );
  } else {
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => Login()),
    );
  }
}

Future<void> logout(BuildContext context) async {
//Api address
  Network networkMgr = new Network(_URL);

  // Prepare data
  String apiURL = '/auth/logout';
  SharedPreferences localStorage = await SharedPreferences.getInstance();
  Map data = {
    //'token': localStorage.getString('token'),
    'user': localStorage.getString('user'),
  };

  // Send request
  var response = await networkMgr.postRequest(data, apiURL);
  var body = json.decode(response.body);
  print(body);

  // Return status
  if (body['success']) {
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => Login()),
    );
  }
}

// Validators
String validateAccount(String value) {
  if (value.isEmpty || value.length <= 5) {
    return 'Debe tener almenos 5 caracteres.';
  }
  return null;
}

String validateUserEmail(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value)) {
    return 'Correo inválido.';
  }
  return null;
}

String validateUserPassword(String value) {
  if (value.isEmpty || value.length <= 3) {
    return 'Al menos 4 caracteres.';
  }
  return null;
}
