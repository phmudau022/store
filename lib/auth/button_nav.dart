import 'package:flutter/material.dart';
import 'package:store/auth/details/details_screen.dart';

class ButtonNavigator extends StatefulWidget {
  const ButtonNavigator({Key? key}) : super(key: key);

  @override
  State<ButtonNavigator> createState() => _ButtonNavigatorState();
}

class _ButtonNavigatorState extends State<ButtonNavigator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 33,
            color: Color(0XFF6DAED9).withOpacity(0.13),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DetailsScreen();
                }),
              );
            },
            icon: Icon(Icons.home),
          ),
          IconButton(
            onPressed: () {
            
            },
            icon: Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {
             
            },
            icon: Icon(Icons.info_outline),
          ),
          IconButton(
            onPressed: () {
             
            },
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
