import 'package:flutter/material.dart';

void main() {
  runApp(PeregrineApp());
}

const AppTitle = "Peregrine";
const HeaderActions = ["Profile", "Locations", "Rewards"];

class PeregrineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(AppTitle),
        backgroundColor: Color.fromRGBO(40, 210, 40, 1),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: HeaderActions.map((String text) => RaisedButton(
                  onPressed: () => {print("Pressed $text")},
                  child: Text(text),
                )).toList(),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(AppTitle,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ))
          ])
        ],
      ),
    ));
  }
}
