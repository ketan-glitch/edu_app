import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: size.width * 0.1,
        right: size.width * 0.1,
      ),
      height: size.height * 0.055,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: TextStyle(
            color: Colors.blueGrey,
            fontSize: 25,
            fontFamily: 'QuickSand',
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(width: 2, color: Colors.red),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(width: 2, color: Colors.red),
          ),
          suffixIcon: Icon(
            Icons.search,
            color: Colors.red,
            size: 30,
          ),
        ),
      ),
    );
  }
}

