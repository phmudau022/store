
import 'package:flutter/material.dart';
import 'package:store/auth/appbar.dart';
import 'package:store/screen/color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store/auth/body.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeappbar(context),
      body: Body(),
    );
  }
}

