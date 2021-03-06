import 'package:shelf_modular/src/core/either.dart';
import 'package:shelf_modular/src/domain/errors/errors.dart';
import 'package:shelf_modular/src/domain/services/bind_service.dart';

abstract class DisposeBind {
  Either<ModularError, bool> call<T extends Object>();
}

class DisposeBindImpl implements DisposeBind {
  final BindService bindService;

  DisposeBindImpl(this.bindService);

  @override
  Either<ModularError, bool> call<T extends Object>() {
    return bindService.disposeBind<T>();
  }
}
