import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../business/entities/employee_entity.dart';
import '../../business/failures/_base/failure.dart';
import '../../business/failures/api_failure.dart';
import '../../business/repositories/employee_repository.dart';
import '../datasources/employee/employee_remote_datasource.dart';

@RegisterAs(EmployeeRepository)
@injectable
class EmployeeRepositoryImpl implements EmployeeRepository {
  final EmployeeRemoteDatasource _datasource;

  EmployeeRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, EmployeeEntity>> register(
      EmployeeEntity employee) async {
    try {
      var employeeModel = await _datasource.getEmployees();
      print(employeeModel);
      return Right(employee);
    } on DioError {
      return Left(ApiFailure());
    }
  }

  @override
  Future<Either<Failure, void>> saveEmployee(EmployeeEntity employee) async {
    await Future.delayed(Duration(seconds: 2));
    return Right(null);
  }
}
