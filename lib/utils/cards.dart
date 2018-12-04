import 'package:flutter/material.dart';
import 'package:gdg_flutter/utils/nav.dart';
import 'package:gdg_flutter/utils/gdg.dart';
import 'dart:async';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: Center(
          child: Text(title,
          style: TextStyle(color: Colors.grey,) ,
          ), 
        ),
        elevation: 5.0,
        actions: <Widget>[
          FlatButton(child: Icon(Icons.search),
          onPressed: null,)
        ],
      ),
      body: Text("hello"),
    );
  }
}

class MyCard extends StatelessWidget {
  final data;
  String findMonth(DateTime d) {
    int dout = d.month;
    switch (dout) {
      case 1:
        return "Jan";
      case 2:
        return "Feb";
      case 3:
        return "Mar";
      case 4:
        return "Apr";
      case 5:
        return "May";
      case 6:
        return "June";
      case 7:
        return "July";
      case 8:
        return "Aug";
      case 9:
        return "Sept";
      case 10:
        return "Oct";
      case 11:
        return "Nov";
      case 12:
        return "Dec";
      default:
        return "Error";
    }
  }

  const MyCard({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4.0,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(GDG.name),
          ),
    );
  }
}
