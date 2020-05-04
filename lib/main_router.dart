import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_starter_template/app/modules/login/login_module.dart';

@MaterialAutoRouter()
class $MainRouter {
  @initial
  LoginModule loginModule;
}
