import 'package:flutter/material.dart';

class ColoredTabBar extends StatelessWidget implements PreferredSizeWidget {
  final List<String> _tabs;

  final double _height = 40;
  final BorderRadius _borderRadius = BorderRadius.circular(40);

  ColoredTabBar(this._tabs);

  @override
  Size get preferredSize => Size.fromHeight(_height);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: ClipRRect(
        borderRadius: _borderRadius,
        child: Material(
          color: Color(0xFFF5F5F5),
          child: TabBar(
            indicator: BoxDecoration(
              borderRadius: _borderRadius,
              color: Color(0xFF3B3E5B),
            ),
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Colors.white,
            labelPadding: EdgeInsets.zero,
            labelStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              height: 1.29,
              color: Colors.white,
            ),
            unselectedLabelColor: Color.fromRGBO(124, 126, 146, 0.56),
            tabs: <Tab>[
              for (var i in _tabs)
                Tab(
                  child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(i),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
