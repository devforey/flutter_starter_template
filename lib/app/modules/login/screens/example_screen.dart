import 'package:flutter/material.dart';

import '../widgets/example_widget.dart';

/// Example Screen
class ExampleScreen extends StatefulWidget {
  /// Constructor for Example Screen
  ExampleScreen({Key key}) : super(key: key);

  @override
  _ExampleScreenState createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: <Widget>[
            Text('Welcome to Example Screen!'),
            ExampleWidget(),
          ],
        ),
      ),
    );
  }
}
