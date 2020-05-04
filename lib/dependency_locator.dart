import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dependency_locator.iconfig.dart';

final getIt = GetIt.instance;

@injectableInit
void configure() => $initGetIt(getIt);
