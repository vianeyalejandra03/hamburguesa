import 'package:flutter/material.dart';
import 'package:benitez/pages/first_pages.dart';
import 'package:benitez/pages/second_pages.dart';
import 'package:benitez/pages/third_pages.dart';

void main() => runApp(BenitezApp());

class BenitezApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hamburguesa de benitez',
      home: PaginaInicio(),
    ); //fin materialapp
  }
} //fin clase benitezapp

class PaginaInicio extends StatefulWidget {
  @override
  _PaginaInicioState createState() => _PaginaInicioState();
} //fin inicio clase con estado

class _PaginaInicioState extends State<PaginaInicio> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Widget child;
    switch (_index) {
      case 0:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new FirstPage());

        break;
      case 1:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new SecondPage());
        break;
      case 2:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new ThirdPage());
        break;
    } //fin de switch
    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(onTap: (newIndex) => setState(() => _index = newIndex), currentIndex: _index, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.amber, size: 30.0), //icon
            title: Text('Casa')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.format_align_center, color: Colors.red, size: 30.0), //icon
            title: Text('Articulos')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.purple, size: 30.0), //icon
            title: Text('Compras')), //
      ]), // bottom
    ); //fin de scaffold
  } //fin de widget
} //fin de paginainiciostate
