import 'package:auto_route/auto_route_annotations.dart';

import 'screens/example_screen.dart';
import 'screens/login_screen.dart';

@MaterialAutoRouter()
class $LoginModuleRouter {
  @initial
  LoginScreen loginScreenRoute;

  @MaterialRoute()
  ExampleScreen exampleScreenRoute;
}
