import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:  'Flutter Demo',
      theme: ThemeData(
        primarySwatch:Colors.blue,
      ),
      home:  const MyHomePage(title: 'Flutter Demo Home Page'),
    );

  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,required this.title});
  final String title;

  @override
  State<MyHomePage>  createState()=>_MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  int _selectedIndex =0;

  List<Widget> _widgetOpt =[
    Text('Index 0: Home'),
    Text('Index 1: Business'),
    Text('Index 2: School'),
  ];
  void _onItemTapped(int index){
    setState((){
      _selectedIndex= index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:  Center(
        child: _widgetOpt.elementAt(_selectedIndex),
      ),
      bottomNavigationBar:  BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon:  Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.business),label: "Business"),
          BottomNavigationBarItem(icon: Icon(Icons.school),label:  'School'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo,
        onTap:  _onItemTapped,

      ),
    );

  }
}









