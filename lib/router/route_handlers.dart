//Handlers
import 'package:fluro/fluro.dart';
import 'package:portfolio_devpaul/ui/views/404_not_found_view.dart';
import 'package:portfolio_devpaul/ui/views/counter_provider_page.dart';
import 'package:portfolio_devpaul/ui/views/counter_view.dart';
import 'package:portfolio_devpaul/ui/views/home_view.dart';

final Handler homeHandler = Handler(
  handlerFunc: (context, parameters) => const HomeView(),
);
final Handler providerHandler = Handler(
  handlerFunc: (context, parameters) => CounterProviderView(
    initialValue: parameters['q']?.first ?? '0',
  ),
);
final Handler statefulHandler = Handler(
    handlerFunc: (context, parameters) => CounterView(
          initialValue: parameters['base']?[0] ?? '0',
        ));
final Handler pageNotFoundHandler = Handler(
  handlerFunc: (_, __) => const NotFoundView(),
);
