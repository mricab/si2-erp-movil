import 'package:flutter/material.dart';
import 'package:client/controllers/auth_controller.dart';
import 'package:client/ui/ui.dart';
import 'package:client/screens/requests.dart';

class Warehouses extends StatefulWidget {
  @override
  _WarehousesState createState() => _WarehousesState();
}

class _WarehousesState extends State<Warehouses> {
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
      body: ListView(padding: EdgeInsets.fromLTRB(30, 30, 30, 20), children: [
        specialTitle("Almacenes"),
        SizedBox(
          height: 15,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => Requests()),
            );
          },
          child: Card(
            child: Row(children: <Widget>[
              Expanded(
                flex: 3,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    Icon(
                      Icons.home_filled,
                      size: 50,
                      color: Colors.blueGrey,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Almacén 4to Anillo",
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Avenida Roca y Coronado, Calle Buganvillas Nº 3921",
                      textAlign: TextAlign.left,
                      style: const TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => Requests()),
            );
          },
          child: Card(
            child: Row(children: <Widget>[
              Expanded(
                flex: 3,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    Icon(
                      Icons.home_filled,
                      size: 50,
                      color: Colors.blueGrey,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Almacén Montero",
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Avenida Maria Mendoza, Calle 2 Nº 98",
                      textAlign: TextAlign.left,
                      style: const TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => Requests()),
            );
          },
          child: Card(
            child: Row(children: <Widget>[
              Expanded(
                flex: 3,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    Icon(
                      Icons.home_filled,
                      size: 50,
                      color: Colors.blueGrey,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Almacén Doble Vía la Guardia",
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Avenida Doble Vía la Guadia, Km 9, Calle Loma Nº 234",
                      textAlign: TextAlign.left,
                      style: const TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}
