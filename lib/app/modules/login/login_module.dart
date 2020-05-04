import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter_template/app/modules/login/login_module_router.gr.dart';

class LoginModule extends StatelessWidget {
  const LoginModule({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ExtendedNavigator<LoginModuleRouter>(
        router: LoginModuleRouter(),
      ),
    );
  }
}
