import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  @override
  AuthenticationState get initialState => UnauthenticatedState();

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is LoginEvent) {
      yield LoadingState();
      await Future.delayed(Duration(seconds: 2));
      yield AuthenticatedState();
      return;
    }

    if (event is LogoutEvent) {
      yield LoadingState();
      await Future.delayed(Duration(seconds: 2));
      yield UnauthenticatedState();
      return;
    }

    yield UnauthenticatedState();
  }
}
