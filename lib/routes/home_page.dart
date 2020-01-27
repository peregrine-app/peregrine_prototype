import 'package:flutter/material.dart';

const AppTitle = "Peregrine";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              AppTitle,
              style: Theme.of(context).textTheme.title,
            ),
            Icon(
              Icons.account_circle,
              color: Colors.green,
              size: 30.0,
              semanticLabel: 'Profile picture',
            )
          ]),
        ),
        body: ListView(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/locations');
                  },
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.my_location,
                        size: 18,
                        semanticLabel: 'Your locations',
                      ),
                      Text("Your locations")
                    ],
                  ))
            ])
          ],
        ));
  }
}
