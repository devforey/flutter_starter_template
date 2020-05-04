// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_starter_template/app/modules/login/login_module.dart';

abstract class Routes {
  static const loginModule = '/';
}

class MainRouter extends RouterBase {
  //This will probably be removed in future versions
  //you should call ExtendedNavigator.ofRouter<Router>() directly
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<MainRouter>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.loginModule:
        if (hasInvalidArgs<LoginModuleArguments>(args)) {
          return misTypedArgsRoute<LoginModuleArguments>(args);
        }
        final typedArgs =
            args as LoginModuleArguments ?? LoginModuleArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => LoginModule(key: typedArgs.key),
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

//LoginModule arguments holder class
class LoginModuleArguments {
  final Key key;
  LoginModuleArguments({this.key});
}
