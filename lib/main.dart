import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter_template/main_router.gr.dart';

import 'dependency_locator.dart';

void main() {
  configure();
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        builder: (BuildContext context, Widget child) {
          return ExtendedNavigator<MainRouter>(
            router: MainRouter(),
          );
        });
  }
}
