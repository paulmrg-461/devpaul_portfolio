import 'package:fluro/fluro.dart';
import 'package:portfolio_devpaul/router/route_handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();
  static void configureRoutes() {
    router.define('/:page', handler: homeHandler);
    router.notFoundHandler = homeHandler;
  }
}
