part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();
}

class LoginEvent extends AuthenticationEvent {
  @override
  List<Object> get props => null;
}

class LogoutEvent extends AuthenticationEvent {
  @override
  List<Object> get props => null;
}
