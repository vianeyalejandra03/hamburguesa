import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ui.Size logicalSize = MediaQuery.of(context).size;
    final double _height = logicalSize.height;
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Container(
              child: Text(
                'BURGUER KING',
                style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0, color: Colors.red),
              ),
            ), //fin container
            SizedBox(
              height: 40,
            ),
            Column(children: <Widget>[
              Container(
                padding: EdgeInsets.all(2.0),
                child: Stack(
                  children: <Widget>[
                    Align(
                      child: new AssetImage('assets/images/hamburguesa,jpg'),
                    )
                  ], //fin de widget
                ), //fin de stack
              ) //container
            ] //fin de widget
                ) //fin de column
          ], //fin de widget
        ), //fin de columna
      ) //fin de container
          ), //safearea
    ); //fin de scaffold
  } // widget
} // first page
