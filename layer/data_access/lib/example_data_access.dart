import 'package:business/example_business_contract.dart';

class ExampleDataAccess implements IExampleBusinessContract {
  @override
  String getStringFromRemote() {
    return 'String from Data Access layer';
  }
}
