import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Center(
            child: Text("Dicee App"),
          ),
        ),
        body: const DiceeAppp(),
      ),
    ),
  );
}

class DiceeAppp extends StatelessWidget {
  const DiceeAppp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: const Image(
                  image: AssetImage("images/dice1.png"),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset("images/dice2.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
