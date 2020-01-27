import 'package:flutter/material.dart';
import './routes/locations.dart';
import './routes/home_page.dart';

void main() => runApp(PeregrineApp());

class PeregrineApp extends StatefulWidget {
  @override
  _PeregrineAppState createState() => _PeregrineAppState();
}

class _PeregrineAppState extends State<PeregrineApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          appBarTheme: AppBarTheme(elevation: 0, brightness: Brightness.light),
          brightness: Brightness.light,
          fontFamily: 'Helvetica Neue',
          primaryColor: Colors.white,
          textTheme: TextTheme(
            title: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
            body1: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        initialRoute: '/',
        routes: {
          '/locations': (context) => Locations(),
        },
        home: HomePage());
  }
}
