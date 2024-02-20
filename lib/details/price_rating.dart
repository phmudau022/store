import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:store/screen/color.dart';

class TotalPriceRating extends StatelessWidget {
  const TotalPriceRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(vertical: 20),
    child:Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Cheese Burger",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(height: 10),
              // SmoothStarRating(
                // bordercolor: kprimarycolor,
                // rating: 4 ,
              // ),
            ],
          ),
        ),
        ClipPath(
          clipper: PriceClipper(),
          child: Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.symmetric(vertical: 8),
            height: 66,
            width: 65,
            color: kprimarycolor,
            child: Text(
              "\$15",
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
      ],
    )
              );
  }
}

class PriceClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double ignoraheight = 20;
    path.lineTo(0, size.height - ignoraheight);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - ignoraheight);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
