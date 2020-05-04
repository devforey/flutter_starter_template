import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dependency_locator.iconfig.dart';

/// Singleton instasnce of Dependency Injector [GetIt]
final GetIt getIt = GetIt.instance;

@injectableInit

/// Initialization of [GetIt] instance
void configure() => $initGetIt(getIt);
