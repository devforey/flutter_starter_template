import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'dependency_locator.dart';
import 'main_router.gr.dart';

void main() {
  configure();
  runApp(Main());
}

/// Starting component of the application
class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        builder: (context, child) {
          return ExtendedNavigator<MainRouter>(
            router: MainRouter(),
          );
        });
  }
}
