import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'login_screen_event.dart';
part 'login_screen_state.dart';

@injectable
class LoginScreenBloc extends Bloc<LoginScreenEvent, LoginScreenState> {
  @override
  LoginScreenState get initialState => InitialState();

  @override
  Stream<LoginScreenState> mapEventToState(
    LoginScreenEvent event,
  ) async* {
    if (event is LoginEvent) {
      yield LoadingState();
      await Future.delayed(Duration(milliseconds: 2000));
      yield SuccessState();
    } else {
      yield InitialState();
    }
  }
}
