import 'package:equatable/equatable.dart';

import '../../entities/employee_entity.dart';

/// RegisterEmployeeUseCaseParams
class RegisterEmployeeUseCaseParams extends Equatable {
  /// The [EmployeeEntity] to be registered
  final EmployeeEntity entity;

  /// RegisterEmployeeUseCaseParams constructor
  ///
  /// Accepts an [EmployeeEntity] to be registered
  RegisterEmployeeUseCaseParams(this.entity);

  @override
  List<Object> get props => [entity];
}
