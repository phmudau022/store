import 'package:flutter/material.dart';
import 'package:store/auth/body.dart';
import 'package:store/details/Order_button.dart';
import 'package:store/details/app_bar.dart';
import 'package:store/details/front.dart';
import 'package:store/details/price_rating.dart';
import 'package:store/screen/color.dart';
// import 'package:smooth_star_rating/smooth_star_rating.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: kprimarycolor,
      appBar: DetailsAppBar(),
      body: BodyHome(),
    );
  }
}

