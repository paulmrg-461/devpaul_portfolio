import 'package:fluro/fluro.dart';
import 'package:portfolio_devpaul/ui/views/404_not_found_view.dart';
import 'package:portfolio_devpaul/ui/views/counter_provider_page.dart';
import 'package:portfolio_devpaul/ui/views/counter_view.dart';
import 'package:portfolio_devpaul/ui/views/home_view.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define('/',
        handler: _homeHandler, transitionType: TransitionType.fadeIn);
    router.define('/home',
        handler: _homeHandler, transitionType: TransitionType.fadeIn);
    router.define('/provider',
        handler: _providerHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful',
        handler: _statefulHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful/:base',
        handler: _statefulHandler, transitionType: TransitionType.fadeIn);

    router.notFoundHandler = _pageNotFoundHandler;
  }

  //Handlers
  static final Handler _homeHandler = Handler(
    handlerFunc: (context, parameters) => const HomeView(),
  );
  static final Handler _providerHandler = Handler(
    handlerFunc: (context, parameters) => CounterProviderView(
      initialValue: parameters['q']?[0] ?? '0',
    ),
  );
  static final Handler _statefulHandler = Handler(
      handlerFunc: (context, parameters) => CounterView(
            initialValue: parameters['base']?[0] ?? '0',
          ));
  static final Handler _pageNotFoundHandler = Handler(
    handlerFunc: (_, __) => const NotFoundView(),
  );
}
