// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:flutter_starter_template/data_access/core/register_module.dart';
import 'package:flutter_starter_template/data_access/datasources/employee/employee_remote_datasource.dart';
import 'package:flutter_starter_template/data_access/repositories/employee_repository.dart';
import 'package:flutter_starter_template/business/repositories/employee_repository.dart';
import 'package:flutter_starter_template/business/use_cases/register_employee/register_employee_use_case.dart';
import 'package:flutter_starter_template/app/bloc/authentication_bloc/authentication_bloc.dart';
import 'package:flutter_starter_template/app/modules/login/bloc/login_screen_bloc/login_screen_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final registerModule = _$RegisterModule();
  g.registerLazySingleton<Dio>(() => registerModule.dio);
  g.registerFactory<EmployeeRemoteDatasource>(
      () => EmployeeRemoteDatasource(g<Dio>()));
  g.registerFactory<EmployeeRepository>(
      () => EmployeeRepositoryImpl(g<EmployeeRemoteDatasource>()));
  g.registerFactory<RegisterEmployeeUseCase>(
      () => RegisterEmployeeUseCase(g<EmployeeRepository>()));
  g.registerFactory<AuthenticationBloc>(
      () => AuthenticationBloc(g<RegisterEmployeeUseCase>()));
  g.registerFactory<LoginScreenBloc>(
      () => LoginScreenBloc(g<RegisterEmployeeUseCase>()));
}

class _$RegisterModule extends RegisterModule {}
