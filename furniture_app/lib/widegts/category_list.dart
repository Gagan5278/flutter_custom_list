import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  final List<String> categoryList = [
    'Sofas',
    'Sectionals',
    'Loveseats',
    'Recliners',
    'Chaises',
    'Benches',
    'Sideboards'
  ];

  var selectedIndex = 0;
  void buttonTapAction(int indx) {
    setState(() {
      selectedIndex = indx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (cntx, index) {
            return Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                decoration: BoxDecoration(
                    color: selectedIndex == index
                        ? Theme.of(context).accentColor
                        : Colors.white,
                    borderRadius: BorderRadius.circular(16)),
                child: FlatButton(
                  highlightColor: null,
                  onPressed: () => buttonTapAction(index),
                  child: Text(
                    categoryList[index],
                    style: TextStyle(
                        color: selectedIndex == index
                            ? Colors.white
                            : Theme.of(context).primaryColor,
                        fontSize: 14),
                  ),
                ));
          },
          itemCount: categoryList.length,
        ),
      ),
    );
  }
}
