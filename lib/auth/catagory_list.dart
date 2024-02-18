import 'package:flutter/material.dart';
import 'package:store/auth/catagory_item.dart';
import 'package:store/auth/searchbox.dart';

class Catagorylist extends StatefulWidget {
  const Catagorylist({Key? key}) : super(key: key);

  @override
  _CatagorylistState createState() => _CatagorylistState();
}

class _CatagorylistState extends State<Catagorylist> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          CategoryItem(
            title: "Combo Meal",
            isActive: true,
            press: () {},
          ),
          CategoryItem(
            title: "chicken",
            isActive: false,
            press: () {},
          ),
          CategoryItem(
            title: "pizza",
            isActive: false,
            press: () {},
          ),
          CategoryItem(
            title: "burger",
            isActive: false,
            press: () {},
          ),
          CategoryItem(
            title: "pasta",
            isActive: false,
            press: () {},
          ),
        ],
      ),
    );
  }
}
