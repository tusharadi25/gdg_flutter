import 'package:flutter/material.dart';
import 'package:gdg_flutter/pages/splash.dart';
import 'package:gdg_flutter/pages/error.dart';
import 'package:gdg_flutter/pages/home.dart';

var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => HomeScreen(),
  "/error": (BuildContext context) => error(),
};

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  AppState createState() => new AppState();
}

class AppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.grey,
            accentColor: Colors.white,
            fontFamily: 'Roboto-Regular'),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        routes: routes);
  }
}
