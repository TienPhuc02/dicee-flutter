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
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Container(
                height: 100,
                child: FloatingActionButton(
                  backgroundColor: Colors.red,
                  onPressed: () {
                    setState(() {
                      leftDiceNumber = 5;
                      print('diceNumber =$leftDiceNumber');
                    });
                  },
                  child: Image(
                    image: AssetImage('images/dice$leftDiceNumber.png'),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                child: FloatingActionButton(
                  backgroundColor: Colors.red,
                  onPressed: () {
                    print("hello world right");
                  },
                  child: Image(image: AssetImage("images/dice2.png")),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class DiceePage extends StatelessWidget {
//   const DiceePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Expanded(
//               child: Container(
//                 height: 100,
//                 child: FloatingActionButton(
//                   backgroundColor: Colors.red,
//                   onPressed: () {
//                     print("hello world left");
//                   },
//                   child: const Image(
//                     image: AssetImage("images/dice1.png"),
//                   ),
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 height: 100,
//                 child: FloatingActionButton(
//                   backgroundColor: Colors.red,
//                   onPressed: () {
//                     print("hello world right");
//                   },
//                   child: const Image(image: AssetImage("images/dice2.png")),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
