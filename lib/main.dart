import 'package:appartman/screens/boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'screens/main_screen.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(canvasColor: Colors.transparent,
    scaffoldBackgroundColor: Colors.white),
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(
        seconds: 2,
      ),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BoardingScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          'assets/images/logo.svg',
        ),
      ),
      bottomNavigationBar: SvgPicture.asset(
        'assets/images/buildings.svg',
      ),
    );
  }
}
