import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 300, minWidth: 200),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(color: Color(0xFFFF5733)),
                child: Align(
                  alignment: Alignment(0.1, 0),
                  child: Text(
                    "CONGELADOS Y LACTEOS",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                ),
              ), //Container
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(color: Color(0xFFFFC300)),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFB9FF00),
                    shape: BoxShape.circle,
                  ),
                  child: Align(
                    alignment: Alignment(0, 0.1),
                    child: Text(
                      "HIGIENE PERSONAL",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0, color: Colors.black),
                    ),
                  ), //Align
                ), //Fin Container
              ), //Fin COntainer
              SizedBox(
                height: 20.0,
              ),
              Align(
                alignment: Alignment(
                  0,
                  0,
                ),
                child: Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFFC100FF),
                    shape: BoxShape.rectangle,
                  ),
                  child: Align(
                    alignment: Alignment(0.1, 0.1),
                    child: Text(
                      "CARNES",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0, color: Colors.black),
                    ),
                  ), //Align
                ), //Container
              ), //Align
            ], //Widget
          ), //Column
        ), //ConstrainedBox
      ), //SafeAREA
    ); //Material
  } // widget
} // first page
