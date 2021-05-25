import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_card.dart';

class SightListScreen extends StatefulWidget {
  @override
  SightListScreenState createState() => SightListScreenState();
}

class SightListScreenState extends State<SightListScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.fromLTRB(16, 40, 0, 0),
          child: Text('Список\nинтересных мест', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF3B3E5B))),
        ),
        titleSpacing: 0,
        toolbarHeight: 112,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SightCard(mocks[0]),
              SightCard(mocks[1]),
              SightCard(mocks[2]),
              SightCard(mocks[0]),
              SightCard(mocks[1]),
              SightCard(mocks[2]),
            ],
          ),
        ),
      ),
    );
  }
}
