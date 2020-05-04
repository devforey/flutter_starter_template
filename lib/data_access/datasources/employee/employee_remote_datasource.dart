import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

import 'employee_model.dart';

part 'employee_remote_datasource.g.dart';

@injectable
@RestApi(baseUrl: 'https://5eafd2770605ed0016d2ce7e.mockapi.io/employees')
abstract class EmployeeRemoteDatasource {
  @factoryMethod
  factory EmployeeRemoteDatasource(Dio dio) = _EmployeeRemoteDatasource;

  @GET('')
  Future<List<EmployeeModel>> getEmployees();
}
