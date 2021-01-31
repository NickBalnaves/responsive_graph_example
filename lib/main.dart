import 'package:flutter/material.dart';
import 'package:responsive_graph_example/pages/sales.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Responsive graph example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SalesPage(),
      );
}
