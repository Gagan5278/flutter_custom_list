import 'package:flutter/material.dart';
import '../model/chair_model.dart';
import '../screens/chair_detail_screen.dart';

class BackgroundBody extends StatelessWidget {
  void showDetailScreen(BuildContext context, ChairModel model) {
    Navigator.push(context, MaterialPageRoute(builder: (cntx) {
      return ChairDetailScreen(
        selectedModel: model,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
          ),
          ListView.builder(
            itemBuilder: (cntx, index) {
              return GestureDetector(
                onTap: () {
                  return showDetailScreen(context, ChairModel.itemList[index]);
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 160.0,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  child: Hero(
                    tag: ChairModel.itemList[index].id,
                    child: Stack(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      // overflow: Overflow.clip,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          height: 160.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(40),
                            ),
                          ),
                          child: Stack(
                            overflow: Overflow.visible,
                            children: [
                              Positioned(
                                  right: 20,
                                  top: -10,
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    ChairModel.itemList[index].image,
                                    fit: BoxFit.fitWidth,
                                  ))
                            ],
                          ),
                        ),
                        Positioned(
                          top: 0,
                          bottom: 0.0,
                          left: 0.0,
                          // width: 100,
                          // height: 160,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 20, top: 40),
                                child: Text(
                                  ChairModel.itemList[index].name,
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 40,
                                padding: EdgeInsets.only(left: 0, top: 5),
                                child: Text(
                                  ChairModel.itemList[index].price,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 24),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: ChairModel.itemList.length,
          ),
        ],
      ),
    );
  }
}
