import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../bloc/login_screen_bloc/login_screen_bloc.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I<LoginScreenBloc>(),
      child: _createPage(context),
    );
  }

  Widget _createPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<LoginScreenBloc, LoginScreenState>(
        builder: (context, state) {
          String label;
          if (state is LoadingState) {
            label = 'Loading...';
          } else {
            label = 'Done.';
          }

          return Column(
            children: <Widget>[
              Text(label),
              RaisedButton(
                child: Text('Load'),
                onPressed: () {
                  final LoginScreenBloc bloc =
                      BlocProvider.of<LoginScreenBloc>(context);
                  bloc.add(LoginEvent('username', 'password'));
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
