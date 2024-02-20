import 'package:flutter/material.dart';

AppBar DetailsAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent, // Make the app bar transparent
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
        icon: Icon(
          Icons.share,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
       IconButton(
        icon: Icon(
          Icons.more,
          color: Colors.white,
        ),
        onPressed: () {},
    ),],
    );
  }

