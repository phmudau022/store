import 'package:flutter/material.dart';
import 'package:store/auth/item_card.dart';

class ItemList extends StatefulWidget {
  const ItemList({super.key});

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
          scrollDirection: Axis.vertical,
        child:Row(
          children: <Widget>[
            Expanded(
              child: Itemcard(
                imageUrl:
                    'https://images.pexels.com/photos/1639557/pexels-photo-1639557.jpeg?auto=compress&cs=tinysrgb&w=600',
                title: "burger & beer",
                shopname: "McDonald's",
                press: (){},
              ),
            ),
            Expanded(
              child: Itemcard(
                imageUrl:
                    'https://images.pexels.com/photos/1166120/pexels-photo-1166120.jpeg?auto=compress&cs=tinysrgb&w=600',
                title: "pizza and colddrink",
                shopname: "McDonald's",
                press: (){},
              ),
            ),
            Expanded(
              child: Itemcard(
                imageUrl:
                    'https://images.pexels.com/photos/1460872/pexels-photo-1460872.jpeg?auto=compress&cs=tinysrgb&w=600',
                title: "pasta",
                shopname: "McDonald's",
                press: (){},
              ),
            ),
            //  Expanded(
            //   child: Itemcard(
            //     imageUrl:
            //         'https://images.pexels.com/photos/1166120/pexels-photo-1166120.jpeg?auto=compress&cs=tinysrgb&w=600',
            //     title: "pizza and colddrink",
            //     shopname: "McDonald's",
            //     press: (){},
            //   ),
            // ),
          ],
        ),
    );
  }
}