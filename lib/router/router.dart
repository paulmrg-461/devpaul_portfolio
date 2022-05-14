import 'package:fluro/fluro.dart';
import 'package:portfolio_devpaul/ui/views/404_not_found_view.dart';
import 'package:portfolio_devpaul/ui/views/counter_provider_page.dart';
import 'package:portfolio_devpaul/ui/views/counter_view.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define('/',
        handler: _counterHandler,
        transitionType: TransitionType.fadeIn,
        transitionDuration: const Duration(milliseconds: 250));
    router.define('/provider',
        handler: _providerHandler,
        transitionType: TransitionType.fadeIn,
        transitionDuration: const Duration(milliseconds: 250));
    router.define('/stateful',
        handler: _statefulHandler,
        transitionType: TransitionType.fadeIn,
        transitionDuration: const Duration(milliseconds: 250));

    router.notFoundHandler = _pageNotFoundHandler;
  }

  //Handlers
  static final Handler _counterHandler = Handler(
    handlerFunc: (context, parameters) => const CounterView(),
  );
  static final Handler _providerHandler = Handler(
    handlerFunc: (context, parameters) => const CounterProviderView(),
  );
  static final Handler _statefulHandler = Handler(
    handlerFunc: (context, parameters) => const CounterView(),
  );
  static final Handler _pageNotFoundHandler = Handler(
    handlerFunc: (_, __) => const NotFoundView(),
  );
}
