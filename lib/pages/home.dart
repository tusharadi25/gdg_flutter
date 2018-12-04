import 'package:flutter/material.dart';
import 'package:gdg_flutter/utils/gdg.dart';
import 'package:gdg_flutter/utils/cards.dart';

class HomeScreen extends StatelessWidget {
  final String name = GDG.name;
  @override
    Widget build(BuildContext context) {
      return  MyHomePage(title: GDG.name);
    }
}
