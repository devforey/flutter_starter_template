// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_starter_template/data_access/example_data_access.dart';
import 'package:flutter_starter_template/business/example_business_contract.dart';
import 'package:flutter_starter_template/business/example_business.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerFactory<IExampleBusinessContract>(() => ExampleDataAccess());
  g.registerFactory<ExampleBusiness>(() =>
      ExampleBusiness(exampleBusinessContract: g<IExampleBusinessContract>()));
}
