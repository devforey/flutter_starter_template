import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../../business/entities/employee_entity.dart';
import '../../../../../business/use_cases/register_employee/register_employee_use_case.dart';
import '../../../../../business/use_cases/register_employee/register_employee_use_case_params.dart';

part 'login_screen_event.dart';
part 'login_screen_state.dart';

@injectable
class LoginScreenBloc extends Bloc<LoginScreenEvent, LoginScreenState> {
  final RegisterEmployeeUseCase _useCase;

  LoginScreenBloc(this._useCase);

  @override
  LoginScreenState get initialState => InitialState();

  @override
  Stream<LoginScreenState> mapEventToState(
    LoginScreenEvent event,
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
      yield SuccessState();
    } else {
      yield InitialState();
    }
  }
}
