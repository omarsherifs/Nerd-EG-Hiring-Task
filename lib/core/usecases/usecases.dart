import 'package:dartz/dartz.dart';
import 'package:nerd_eg_hiring_task/core/errors/error.dart';

abstract class BaseUseCase<T> {
  Future<Either<T, AppError>> call();
}
