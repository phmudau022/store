import 'package:flutter/material.dart';
import 'package:store/auth/body.dart';
import 'package:store/details/app_bar.dart';
import 'package:store/screen/color.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: kprimarycolor,
      appBar: DetailsAppBar(),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
            child:Column(children:<Widget>[ 
              ShopName("MacDonald's"),
              Row(children: <Widget>[
                Expanded(child: Column(children: <Widget>[],))
              ],)
              ]
          ),
        ),
    ),
    Container(
      // height: 66,
      // width: 65,
      color: kprimarycolor,
    )
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
