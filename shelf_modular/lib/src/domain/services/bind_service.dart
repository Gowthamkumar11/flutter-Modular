import 'package:shelf_modular/src/core/either.dart';
import 'package:shelf_modular/src/domain/errors/errors.dart';

abstract class BindService {
  Either<ModularError, T> getBind<T extends Object>();
  Either<ModularError, bool> disposeBind<T extends Object>();
}
