import 'main.dart';

class ExampleBusiness {
  ExampleBusiness({this.exampleBusinessContract});

  IExampleBusinessContract exampleBusinessContract;

  getString() {
    return exampleBusinessContract.getStringFromRemote();
  }
}
