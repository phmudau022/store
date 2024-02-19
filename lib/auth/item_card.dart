import 'package:flutter/material.dart';
import 'package:store/screen/color.dart';

class Itemcard extends StatefulWidget {
  final String imageUrl, title, shopname;
  final Function press;

  const Itemcard(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.shopname, required this.press})
      : super(key: key);

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
          onTap: widget.press(),
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
                    width: double.infinity,
                    height: size.width * 0.3,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10), // Add some spacing between the image and text
                Text(
                  widget.title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5), // Add some spacing between title and shop name
                Text(
                  widget.shopname,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
