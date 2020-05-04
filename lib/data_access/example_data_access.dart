import 'package:injectable/injectable.dart';

import '../business/example_business_contract.dart';

@RegisterAs(IExampleBusinessContract)
@injectable
class ExampleDataAccess implements IExampleBusinessContract {
  @override
  String getStringFromRemote() {
    return 'String from Data Access layer';
  }
}
