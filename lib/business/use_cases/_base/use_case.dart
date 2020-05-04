import 'package:dartz/dartz.dart';

abstract class UseCase<Failure, Entity, Params> {
  Future<Either<Failure, Entity>> call(Params params);
}
