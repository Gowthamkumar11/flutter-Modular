import 'package:modular_core/modular_core.dart';
import 'package:shelf_modular/src/core/either.dart';
import 'package:shelf_modular/src/domain/dtos/route_dto.dart';
import 'package:shelf_modular/src/domain/errors/errors.dart';
import 'package:shelf_modular/src/domain/services/route_service.dart';

class RouteServiceImpl implements RouteService {
  final Tracker tracker;

  RouteServiceImpl(this.tracker);

  @override
  Future<Either<ModularError, ModularRoute>> getRoute(RouteParmsDTO params) async {
    final route = await tracker.findRoute(params.url);
    if (route != null) {
      return right(route);
    } else {
      return left(RouteNotFoundException('Route (${params.url})'));
    }
  }
}
