import 'package:auto_route/auto_route_annotations.dart';

import 'app/modules/login/login_module.dart';

@MaterialAutoRouter()

/// Starting router of the application
class $MainRouter {
  @initial

  /// Route for Login Module
  LoginModule loginModule;
}
