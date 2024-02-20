import 'package:flutter/material.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.shopping_bag, color: Colors.white),
        SizedBox(width: 10),
        Text(
          "Order Now",
          style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
          ),
        ),
      ],
    );
  }
}
