part of 'login_screen_bloc.dart';

abstract class LoginScreenState extends Equatable {
  const LoginScreenState();
}

class InitialState extends LoginScreenState {
  @override
  List<Object> get props => [];
}

class LoadingState extends LoginScreenState {
  @override
  List<Object> get props => [];
}

class SuccessState extends LoginScreenState {
  @override
  List<Object> get props => [];
}

class FailState extends LoginScreenState {
  @override
  List<Object> get props => [];
}
