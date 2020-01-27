import 'package:flutter/material.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text(
        "Your locations",
        style: Theme.of(context).textTheme.title,
      )),
      body: Center(
        child: Text("You have not set any locations yet"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.navigation),
        backgroundColor: Colors.green,
      ),
    );
  }
}
