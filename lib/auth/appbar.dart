import 'package:flutter/material.dart';
import 'package:store/screen/color.dart';

AppBar homeappbar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.menu),
      onPressed: () {},
    ),
    title: RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.headline6!.copyWith(
              fontWeight: FontWeight.bold,
            ),
        children: [
          TextSpan(
            text: "fast",
            style: TextStyle(color: ksecondarycolor),
          ),
          TextSpan(
            text: "food",
            style: TextStyle(color: kprimarycolor),
          )
        ],
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.notifications),
        onPressed: () {},
      )
    ],
  );
}
