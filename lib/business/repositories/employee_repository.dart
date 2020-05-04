import 'package:dartz/dartz.dart';

import '../entities/employee_entity.dart';
import '../failures/_base/failure.dart';

/// Contract class for Employee Repository
abstract class EmployeeRepository {
  // TODO: Method docs
  /// Register an [Employee] remotely
  ///
  /// Returns [EmployeeEntity] on successfully registered
  /// Returns [ApiFailure] on generic API related errors
  /// Returns [RegisterEmployeeFailure] on specific errors
  /// regarding RegisterEmployee endpoint
  Future<Either<Failure, EmployeeEntity>> register(EmployeeEntity employee);

  // TODO: Method docs
  /// Saves an [Employee] on local storage
  ///
  /// Returns [void] on successfully done.
  /// Returns [LocalStorageFailure] on failure to save on Local Storage
  Future<Either<Failure, void>> saveEmployee(EmployeeEntity employee);
}
