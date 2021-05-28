import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

class SightCard extends StatelessWidget {
  Sight _sight;
  static const _borderRadius = Radius.circular(16);

  SightCard(this._sight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Container(
            height: 96,
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: _borderRadius, topRight: _borderRadius),
                  child: Image(
                    image: ExactAssetImage('res/images/sights/${_sight.image}'),
                    fit: BoxFit.cover,
                    frameBuilder: (BuildContext context, Widget child, int? frame, bool loaded) {
                      return frame != null ? child : Center(child: CircularProgressIndicator());
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
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
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: _borderRadius, bottomRight: _borderRadius),
              color: Color(0xFFF5F5F5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _sight.name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF3B3E5B)),
                ),
                SizedBox(height: 2),
                Text(
                  _sight.details.toLowerCase(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF7C7E92)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
