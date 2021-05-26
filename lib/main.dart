import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_details.dart';
import 'package:places/ui/screen/sight_list_screen.dart';

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
      // home: SightListScreen(),
      home: SightDetails(mocks[0]),
    );
  }
}
