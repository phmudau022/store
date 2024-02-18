import 'package:flutter/material.dart';
import 'package:store/screen/color.dart';

class SearchBox extends StatefulWidget {
  final ValueChanged<String> onChanged;

  const SearchBox({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: ksecondarycolor.withOpacity(0.22)),
          ),
          child: TextField(
            onChanged: widget.onChanged,
            decoration: InputDecoration(
              border: InputBorder.none,
              icon: Icon(Icons.search),
              hintText: "Search Here",
              hintStyle: TextStyle(color: ksecondarycolor),
            ),
          ),
        ),
      ],
    );
  }
}
