import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/bottom_menu.dart';
import 'bottom_menu.dart';
import 'colored_tab_bar.dart';
import 'sight_card.dart';

class VisitingScreen extends StatelessWidget {
  final String _title = 'Избранное';

  final List<String> _tabs = ['Хочу посетить', 'Посетил'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).backgroundColor,
          centerTitle: true,
          elevation: 0,
          titleSpacing: 0,
          toolbarHeight: 108,
          title: Padding(
            padding: const EdgeInsets.all(0),
            child: Text(
              _title,
              style: TextStyle(
                color: Color(0xFF252849),
                fontSize: 18,
                height: 1.33,
              ),
            ),
          ),
          bottom: ColoredTabBar(_tabs),
        ),
        body: TabBarView(
          children: <Widget>[
            createView(false),
            createView(true),
          ],
        ),
        bottomNavigationBar: BottomMenu(),
      ),
    );
  }

  Widget createView(bool visitedFilter) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(16, 38, 16, 30),
      child: Column(
        children: <Widget>[
          for (var i in mocks) i.visited == visitedFilter ? (i.visited ? VisitedSightCard(i) : PlannedSightCard(i)) : Container(),
        ],
      ),
    );
  }
}
