import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:places/ui/screen/visiting_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  static const String _title = 'Places';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        fontFamily: 'Roboto',
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: VisitingScreen(),
    );
  }
}
