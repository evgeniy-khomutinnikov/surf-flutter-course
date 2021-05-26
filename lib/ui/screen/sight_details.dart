import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

class SightDetails extends StatefulWidget {
  Sight sight;

  SightDetails(this.sight);

  @override
  SightDetailsState createState() => SightDetailsState();
}

class SightDetailsState extends State<SightDetails> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
            height: 360,
            color: Colors.green.shade500,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(16, 24, 16, 0),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.sight.name,
                    style: TextStyle(fontSize: 24, height: 1.2, fontWeight: FontWeight.bold, color: Color(0xFF3B3E5B)),
                  ),
                  SizedBox(height: 2),
                  Row(
                    children: [
                      Text(
                        widget.sight.type,
                        style: TextStyle(color: Color(0xFF3B3E5B), fontSize: 14, fontWeight: FontWeight.w700, height: 1.29),
                      ),
                      SizedBox(width: 16),
                      Text(
                        'доступно для посещения',
                        style: TextStyle(color: Color(0xFF7C7E92), fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Text(
                    widget.sight.details,
                    style: TextStyle(fontSize: 14, height: 1.29, fontWeight: FontWeight.normal, color: Color(0xFF7C7E92)),
                  ),
                  SizedBox(height: 24),
                  Container(
                    height: 48,
                    color: Colors.green,
                  ),
                  SizedBox(height: 24),
                  Divider(height: 0.8, color: Color.fromRGBO(124, 126, 146, 0.56)),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                        child: Row(
                          children: [
                            Container(width: 24, height: 24, color: Color.fromRGBO(124, 126, 146, 0.56)),
                            SizedBox(width: 8),
                            Text(
                              'Запланировать',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Color.fromRGBO(124, 126, 146, 0.56)),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                        child: Row(
                          children: [
                            Container(width: 24, height: 24, color: Color(0xFF3B3E5B)),
                            SizedBox(width: 8),
                            Text(
                              'В Избранное',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Color(0xFF3B3E5B)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
