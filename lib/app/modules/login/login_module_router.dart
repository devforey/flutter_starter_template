import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_starter_template/app/modules/login/screens/example_screen.dart';
import 'package:flutter_starter_template/app/modules/login/screens/login_screen.dart';

@MaterialAutoRouter()
class $LoginModuleRouter {
  @initial
  LoginScreen loginScreenRoute;

  @MaterialRoute()
  ExampleScreen exampleScreenRoute;
}
