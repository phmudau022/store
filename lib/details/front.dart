import 'package:flutter/material.dart';
import 'package:store/details/Order_button.dart';
import 'package:store/details/price_rating.dart';
import 'package:store/screen/color.dart';

class BodyHome extends StatefulWidget {
  const BodyHome({super.key});

  @override
  State<BodyHome> createState() => _BodyState();
}

class _BodyState extends State<BodyHome> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        SizedBox(
          height: 60.0,
        ),
        itemimage(size),
        Expanded(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(children: <Widget>[
              ShopName("MacDonald's"),
              TotalPriceRating(),
              Text(
                  "Indulge in the joy of flavors! 🍔✨ Savor every bite and treat your taste buds to a world of deliciousness. Our fast food delights are crafted with passion, bringing you a symphony of taste in every dish. Whether it's the sizzling sensation of burgers, the crispy perfection of fries, or the sweetness of desserts – let your cravings lead the way. Fast, fresh, and utterly irresistible. Welcome to a feast of flavors at your fingertips."),
              SizedBox(
                height: size.height * 0.1,
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  color: isPressed ? kprimarycolor : kprimarycolor.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle button press action here
                    print("Button Pressed!");
                  },
                  // onHighlightChanged: (isHighlight) {
                  //   setState(() {
                  //     isPressed = isHighlight;
                  //   });
                  // },
                  style: ElevatedButton.styleFrom(
                    primary: isPressed ? kprimarycolor.withOpacity(0.6) : kprimarycolor,
                    elevation: isPressed ? 0 : 8,
                  ),
                  child: Text(
                    "Order Now",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }

  Row ShopName(String name) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: ksecondarycolor,
        ),
        SizedBox(width: 10),
        Text(
          name,
        ),
      ],
    );
  }

  Widget itemimage(Size size) {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqJmO_ERqCIBxA4fSStQOA_ZQwHfdqxV-WmFn3xlMKZNTheU0TTIC14rZEzhsNikb0d4Q&usqp=CAU',
        height: 0.25 * size.height,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
