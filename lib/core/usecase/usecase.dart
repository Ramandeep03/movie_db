import 'package:dartz/dartz.dart';
import 'package:movie_db/core/error/failure.dart';

/// Base class for all UseCases
/// [Type] is the return type (Entity)
/// [Params] is the input type (arguments)
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

/// For use cases where no parameters are required
class NoParams {
  const NoParams();
}
