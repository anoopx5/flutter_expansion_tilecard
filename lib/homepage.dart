import 'package:flutter/material.dart';

class TileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            child: SingleChildScrollView(
                child: Column(
              children: [
                Image.asset('assets/fl.jpg'),
                expansionTile(),
              ],
            )),
          ),
          appBar: AppBar(
            title: Text('Expansion Tile Card'),
            centerTitle: true,
          )),
    );
  }
}

Widget expansionTile() {
  return ExpansionTile(
    title: Text(
      'What is Flutter?',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    children: [
      Text(
        "Flutter transforms the app development process. Build, test, and deploy beautiful mobile, web, desktop, and embedded apps from a single codebase.",
        style: TextStyle(fontSize: 18),
        textAlign: TextAlign.justify,
      ),
    ],
  );
}
