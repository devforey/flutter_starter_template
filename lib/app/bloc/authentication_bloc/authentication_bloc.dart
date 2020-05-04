import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../business/entities/employee_entity.dart';
import '../../../business/use_cases/register_employee/register_employee_use_case.dart';
import '../../../business/use_cases/register_employee/register_employee_use_case_params.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final RegisterEmployeeUseCase _useCase;

  AuthenticationBloc(this._useCase);

  @override
  AuthenticationState get initialState => UnauthenticatedState();

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is LoginEvent) {
      yield LoadingState();
      var result = await _useCase.call(
          RegisterEmployeeUseCaseParams(EmployeeEntity('Mark', 'Vizcarra')));

      if (result.isLeft()) {
        print('error');
      } else {
        print('success');
      }

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
