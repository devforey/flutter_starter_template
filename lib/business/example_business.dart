import 'package:injectable/injectable.dart';

import 'example_business_contract.dart';

@injectable
class ExampleBusiness {
  ExampleBusiness({this.exampleBusinessContract});

  IExampleBusinessContract exampleBusinessContract;

  getString() {
    return exampleBusinessContract.getStringFromRemote();
  }
}
