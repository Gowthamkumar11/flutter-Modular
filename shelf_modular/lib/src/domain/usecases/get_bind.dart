import 'package:shelf_modular/src/core/either.dart';
import 'package:shelf_modular/src/domain/errors/errors.dart';
import 'package:shelf_modular/src/domain/services/bind_service.dart';

abstract class GetBind {
  Either<ModularError, T> call<T extends Object>();
}

class GetBindImpl implements GetBind {
  final BindService bindService;

  GetBindImpl(this.bindService);

  @override
  Either<ModularError, T> call<T extends Object>() {
    return bindService.getBind<T>();
  }
}
