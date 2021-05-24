import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:places/domain/sight.dart';

class SightCard extends StatelessWidget {
  Sight _sight;

  SightCard(this._sight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.green.shade500,
            height: 96,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _sight.type,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),
                ),
                Spacer(),
                Container(
                  alignment: Alignment.topRight,
                  color: Colors.white,
                  width: 24,
                  height: 24,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            color: HexColor('#F5F5F5'),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _sight.name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: HexColor('3B3E5B')),
                ),
                SizedBox(height: 2),
                Text(
                  _sight.details.toLowerCase(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: HexColor('#7C7E92')),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
