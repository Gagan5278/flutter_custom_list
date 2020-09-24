import 'package:flutter/material.dart';
import '../widegts/search_bar.dart';
import '../widegts/category_list.dart';
import '../widegts/background_body.dart';

class FurnitureListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
        elevation: 0,
        title: Text('Furniture'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SearchBar(),
            CategoryList(),
            SizedBox(
              height: 40,
            ),
            BackgroundBody(),
          ],
        ),
      ),
    );
  }
}
