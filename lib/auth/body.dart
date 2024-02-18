import 'package:flutter/material.dart';
import 'package:store/auth/catagory_list.dart';
import 'package:store/auth/searchbox.dart';
import 'package:store/screen/color.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SearchBox(
          onChanged: (value) {},
        ),
        Catagorylist(),
        Row(
          children: <Widget>[
            Expanded(
              child: Itemcard(
                imageUrl: 'https://images.pexels.com/photos/1639557/pexels-photo-1639557.jpeg?auto=compress&cs=tinysrgb&w=600',
              ),
            ),
            Expanded(
              child: Itemcard(
                imageUrl: 'https://images.pexels.com/photos/1166120/pexels-photo-1166120.jpeg?auto=compress&cs=tinysrgb&w=600',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Itemcard extends StatefulWidget {
  final String imageUrl;

  const Itemcard({Key? key, required this.imageUrl}) : super(key: key);

  @override
  State<Itemcard> createState() => _ItemcardState();
}

class _ItemcardState extends State<Itemcard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 20,
            color: Color(0XFFB0CCE1).withOpacity(0.32),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: kprimarycolor.withOpacity(0.13),
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    widget.imageUrl,
                    width: double.infinity, // Take the full available width
                    height: size.width * 0.3, // Adjust the height as needed
                    fit: BoxFit.cover,
                  ),
                ),
                Text("burger & beer"),
                Text(
                  "McDonald's",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
