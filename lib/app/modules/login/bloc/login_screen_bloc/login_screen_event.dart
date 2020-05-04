part of 'login_screen_bloc.dart';

abstract class LoginScreenEvent extends Equatable {
  const LoginScreenEvent();
}

class LoginEvent extends LoginScreenEvent {
  const LoginEvent(this.username, this.password);

  final String username;
  final String password;

  @override
  List<Object> get props => [username, password];
}
