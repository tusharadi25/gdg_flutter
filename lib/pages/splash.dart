import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gdg_flutter/utils/gdg.dart';
import 'package:gdg_flutter/utils/nav.dart';
import 'package:connectivity/connectivity.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Future<bool> netcheck() async{
    var connectivityResult = await (new Connectivity().checkConnectivity());
    if(connectivityResult==ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi)
      return true;
    else return false;
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      netcheck().then((bool a) {
        if (a) {
          MyNavigator.goToHome(context);
        } else {
          MyNavigator.error(context);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: Colors.black,
          ),
          Image.asset('assets/mumbai-black.jpg'),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/GDG-Logo.png',
                      width: 100,),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        GDG.name,
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      child: new CircularProgressIndicator(
                        valueColor: new AlwaysStoppedAnimation(Colors.grey),
                        strokeWidth: 5.0),
                      height: 60.0,
                      width: 60.0,),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                    ),
                    Text(
                      GDG.tagline,
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                          color: Colors.grey),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
