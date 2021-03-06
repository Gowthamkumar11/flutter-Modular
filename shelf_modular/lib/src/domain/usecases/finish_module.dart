import 'package:shelf_modular/src/core/either.dart';
import 'package:shelf_modular/src/domain/errors/errors.dart';
import 'package:shelf_modular/src/domain/services/module_service.dart';

abstract class FinishModule {
  Either<ModularError, Unit> call();
}

class FinishModuleImpl implements FinishModule {
  final ModuleService moduleService;

  FinishModuleImpl(this.moduleService);

  @override
  Either<ModularError, Unit> call() {
    return moduleService.finish();
  }
}
