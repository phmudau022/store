import 'package:flutter/material.dart';
import 'package:store/auth/catagory_list.dart';
import 'package:store/auth/discountcard.dart';
import 'package:store/auth/item_card.dart';
import 'package:store/auth/item_list.dart';
import 'package:store/auth/searchbox.dart';
import 'package:store/screen/color.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SearchBox(
            onChanged: (value) {},
          ),
          Catagorylist(),
          ItemList(),
          DiscountCard(),
        ]);
  }
}

