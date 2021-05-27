import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taks1/SignIn.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

GlobalKey<ScaffoldMessengerState> messenger = GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: messenger,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        "signIn" : (context)=>SignIn()
      },
    );
  }
}


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  void startTimer(){
    Timer(Duration(seconds: 5),(){
    Navigator.of(context).pushReplacementNamed("signIn");
    } );
  }


  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    startTimer();
  }
//HUa kya?no
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           mainAxisSize: MainAxisSize.max,
            children: [
              Spacer(flex: 2,),
              Image.asset("assets/splash.png",width: MediaQuery.of(context).size.width/2,),
              Text("Chalo Banaye,",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold  ),),
              Text("Ek Naya Rsihta",style: TextStyle(fontSize: 25)),
              Spacer(flex: 1,),
              Align(
        alignment: Alignment.bottomCenter,
              child: Image.asset("assets/shadow.png")
        )
            ],
          ),
      ),
    );
  }
}