import 'package:flutter/material.dart';
import 'package:client/controllers/auth_controller.dart';
import 'package:client/ui/ui.dart';

class Requests extends StatefulWidget {
  @override
  _RequestsState createState() => _RequestsState();
}

class _RequestsState extends State<Requests> {
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
      body: ListView(padding: EdgeInsets.fromLTRB(30, 20, 30, 20), children: [
        Card(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => Requests()),
              );
            },
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Icon(
                  Icons.add_circle_rounded,
                  size: 50,
                  color: Colors.pink,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Solicitudes de Ingreso",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
        Card(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => Requests()),
              );
            },
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Icon(
                  Icons.remove_circle_rounded,
                  size: 50,
                  color: Colors.pink,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Solicitudes de Salida",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
        Card(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => Requests()),
              );
            },
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Icon(
                  Icons.swap_horizontal_circle_sharp,
                  size: 50,
                  color: Colors.pink,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Solicitudes de Traspaso",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
