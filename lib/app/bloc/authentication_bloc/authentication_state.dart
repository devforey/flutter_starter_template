part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();
}

class LoadingState extends AuthenticationState {
  @override
  List<Object> get props => null;
}

class AuthenticatedState extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class UnauthenticatedState extends AuthenticationState {
  @override
  List<Object> get props => [];
}
