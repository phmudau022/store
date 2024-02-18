import 'package:flutter/material.dart';
import 'package:store/screen/color.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function press;

  const CategoryItem({
    Key? key,
    required this.title,
    this.isActive = false,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        children: <Widget>[
          Text(
            title, 
            style: isActive
                ? TextStyle(
                    color: ktextcolor,
                    fontWeight: FontWeight.bold,
                  )
                : TextStyle(fontSize: 12),
          ),
          if (isActive)
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              height: 3,
              width: 22,
              decoration: BoxDecoration(
                color: kprimarycolor,
                borderRadius: BorderRadius.circular(10),
              ),
            )
        ],
      ),
    );
  }
}
