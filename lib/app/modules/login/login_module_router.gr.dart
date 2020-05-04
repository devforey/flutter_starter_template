// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_starter_template/app/modules/login/screens/login_screen.dart';
import 'package:flutter_starter_template/app/modules/login/screens/example_screen.dart';

abstract class Routes {
  static const loginScreenRoute = '/';
  static const exampleScreenRoute = '/example-screen-route';
}

class LoginModuleRouter extends RouterBase {
  //This will probably be removed in future versions
  //you should call ExtendedNavigator.ofRouter<Router>() directly
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<LoginModuleRouter>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.loginScreenRoute:
        if (hasInvalidArgs<LoginScreenArguments>(args)) {
          return misTypedArgsRoute<LoginScreenArguments>(args);
        }
        final typedArgs =
            args as LoginScreenArguments ?? LoginScreenArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => LoginScreen(key: typedArgs.key),
          settings: settings,
        );
      case Routes.exampleScreenRoute:
        if (hasInvalidArgs<ExampleScreenArguments>(args)) {
          return misTypedArgsRoute<ExampleScreenArguments>(args);
        }
        final typedArgs =
            args as ExampleScreenArguments ?? ExampleScreenArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => ExampleScreen(key: typedArgs.key),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//LoginScreen arguments holder class
class LoginScreenArguments {
  final Key key;
  LoginScreenArguments({this.key});
}

//ExampleScreen arguments holder class
class ExampleScreenArguments {
  final Key key;
  ExampleScreenArguments({this.key});
}
