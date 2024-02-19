// import 'package:flutter/material.dart';
// import 'package:store/auth/catagory_list.dart';
// import 'package:store/auth/searchbox.dart';
// import 'package:store/screen/color.dart';

// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         SearchBox(
//           onChanged: (value) {},
//         ),
//         Catagorylist(),
//         Expanded(
//           child: SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: <Widget>[
//                 Itemcard(
//                   imageUrl: 'https://images.pexels.com/photos/1639557/pexels-photo-1639557.jpeg?auto=compress&cs=tinysrgb&w=600',
//                   title: "Burger & Bear",
//                   shopname: "McDonald's",
//                 ),
//                 Itemcard(
//                   imageUrl: 'https://images.pexels.com/photos/1166120/pexels-photo-1166120.jpeg?auto=compress&cs=tinysrgb&w=600',
//                   title: "Pizza & Cold Drink",
//                   shopname: "McDonald's",
//                 ),
//                 Itemcard(
//                   imageUrl: 'https://images.pexels.com/photos/1166120/pexels-photo-1166120.jpeg?auto=compress&cs=tinysrgb&w=600',
//                   title: "Pizza & Cold Drink",
//                   shopname: "McDonald's",
//                 ),
//                 // Add more Itemcard widgets as needed
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class Itemcard extends StatefulWidget {
//   final String imageUrl, title, shopname;

//   const Itemcard({
//     Key? key,
//     required this.imageUrl,
//     required this.title,
//     required this.shopname,
//   }) : super(key: key);

//   @override
//   State<Itemcard> createState() => _ItemcardState();
// }

// class _ItemcardState extends State<Itemcard> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     return Container(
//       margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             offset: Offset(0, 4),
//             blurRadius: 20,
//             color: Color(0XFFB0CCE1).withOpacity(0.32),
//           ),
//         ],
//       ),
//       child: Material(
//         color: Colors.transparent,
//         child: InkWell(
//           onTap: () {},
//           child: Padding(
//             padding: EdgeInsets.all(20.0),
//             child: Column(
//               children: <Widget>[
//                 Container(
//                   padding: EdgeInsets.all(25),
//                   decoration: BoxDecoration(
//                     color: kprimarycolor.withOpacity(0.13),
//                     shape: BoxShape.circle,
//                   ),
//                   child: Image.network(
//                     widget.imageUrl,
//                     width: size.width * 0.2,
//                     height: size.width * 0.2, // Keep square aspect ratio
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Text(widget.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//                 Text(widget.shopname, style: TextStyle(fontSize: 12)),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
