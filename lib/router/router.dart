import 'package:fluro/fluro.dart';
import 'package:portfolio_devpaul/router/route_handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define('/',
        handler: homeHandler, transitionType: TransitionType.fadeIn);
    router.define('/home',
        handler: homeHandler, transitionType: TransitionType.fadeIn);
    router.define('/provider',
        handler: providerHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful',
        handler: statefulHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful/:base',
        handler: statefulHandler, transitionType: TransitionType.fadeIn);

    router.notFoundHandler = pageNotFoundHandler;
  }
}
