import 'package:flutter/material.dart';
import 'package:flutter_starter_template/app/modules/login/widgets/example_widget.dart';

class ExampleScreen extends StatefulWidget {
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
