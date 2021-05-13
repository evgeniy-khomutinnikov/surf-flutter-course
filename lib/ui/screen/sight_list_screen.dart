import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  @override
  SightListScreenState createState() => SightListScreenState();
}

class SightListScreenState extends State<SightListScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: Center(
        child: Text("Hello!"),
      ),
    );
  }
}
