import 'package:flutter/material.dart';
import 'package:client/controllers/auth_controller.dart';
import 'package:client/ui/ui.dart';

class RequestsList extends StatefulWidget {
  @override
  _RequestsListState createState() => _RequestsListState();
}

class _RequestsListState extends State<RequestsList> {
  List<Widget> cards = new List();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor(),
      appBar: AppBar(
        backgroundColor: BarBackgroundColor(),
        title: Text('FICERP'),
        actions: [
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () async {
                // Go back to Login
              }),
          IconButton(
              icon: Icon(Icons.logout),
              onPressed: () async {
                logout(context); // To do
              })
        ],
      ),
      body:
          ListView(padding: EdgeInsets.fromLTRB(30, 20, 30, 20), children: []),
    );
  }
}
