import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
      ),
      home: MyFirstWidget(),
    );
  }
}

// class MyFirstWidget extends StatelessWidget {
//   int _counter = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     print('build called ${++_counter}');
//     return Container(
//       child: Center(
//         child: Text('Hello!'),
//       ),
//     );
//   }
// }
//

class MyFirstWidget extends StatefulWidget {
  @override
  _MyFirstWidgetState createState() => _MyFirstWidgetState();
}

class _MyFirstWidgetState extends State<MyFirstWidget> {
  int _counter = 0;

  Widget build(BuildContext context) {
    print('build called ${++_counter}');
    return Container(
      child: Center(
        child: Text('Hello!'),
      ),
    );
  }
}
