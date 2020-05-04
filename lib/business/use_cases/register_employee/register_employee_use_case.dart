import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../entities/employee_entity.dart';
import '../../failures/_base/failure.dart';
import '../../repositories/employee_repository.dart';
import '../_base/use_case.dart';
import 'register_employee_use_case_params.dart';

@injectable
class RegisterEmployeeUseCase
    extends UseCase<Failure, EmployeeEntity, RegisterEmployeeUseCaseParams> {
  final EmployeeRepository _employeeRepository;

  RegisterEmployeeUseCase(this._employeeRepository);

  // TODO: Method docs
  @override
  Future<Either<Failure, EmployeeEntity>> call(
      RegisterEmployeeUseCaseParams params) async {
    var registerResult = await _employeeRepository.register(params.entity);

    if (registerResult.isLeft()) {
      return registerResult;
    }

    return registerResult.fold(
      (failure) => registerResult,
      _handleRegisterSuccess,
    );
  }

  // TODO: Method docs
  Future<Either<Failure, EmployeeEntity>> _handleRegisterSuccess(
      EmployeeEntity entity) async {
    var saveLocalResult = await _employeeRepository.saveEmployee(entity);

    return saveLocalResult.fold(
      (failure) => Left(failure),
      (_) => Right(entity),
    );
  }
}
