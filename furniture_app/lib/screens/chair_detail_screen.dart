import 'package:flutter/material.dart';
import 'package:furniture_app/model/chair_model.dart';

class ChairDetailScreen extends StatelessWidget {
  final ChairModel selectedModel;
  ChairDetailScreen({this.selectedModel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Color(0x00000000),
        elevation: 0,
      ),
      body: Hero(
          tag: this.selectedModel.id,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(selectedModel.image),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(selectedModel.price,
                        style: TextStyle(fontSize: 24, color: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      selectedModel.name,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      selectedModel.desc,
                      style: TextStyle(color: Colors.white, fontSize: 14.0),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
