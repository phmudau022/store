import 'package:flutter/material.dart';
import 'package:store/auth/homepage.dart';
import 'package:store/screen/color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Store App',
      theme: ThemeData(
        primaryColor: kprimarycolor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyText1:TextStyle(color: ksecondarycolor),
          bodyText2:TextStyle(color: ksecondarycolor)
        )
      ),
      home: Homepage(),
    );
  }
}

