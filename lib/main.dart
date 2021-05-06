import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', // на Android отображается в недавних приложениях
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

//   Type getContextRuntime() => context.runtimeType; // Ошибка сборки - undefined name 'context'

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

class MyFirstWidget extends StatefulWidget {
  @override
  _MyFirstWidgetState createState() => _MyFirstWidgetState();
}

class _MyFirstWidgetState extends State<MyFirstWidget> {
  int _counter = 0;

  Type getContextRuntime() => context.runtimeType; // State поддерживает свойство context, доступно для получения

  Widget build(BuildContext context) {
    print('build called ${++_counter}');
    return Container(
      child: Center(
        child: Text('Hello!'),
      ),
    );
  }
}
