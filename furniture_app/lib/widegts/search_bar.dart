import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white.withOpacity(0.4),
      ),
      child: TextField(
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          enabledBorder: InputBorder.none,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          focusedBorder: InputBorder.none,
          hintText: 'Search',
        ),
      ),
    );
  }
}
