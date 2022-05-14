import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:portfolio_devpaul/ui/views/404_not_found_view.dart';
import 'package:portfolio_devpaul/ui/views/counter_provider_page.dart';
import 'package:portfolio_devpaul/ui/views/counter_view.dart';
import 'package:portfolio_devpaul/ui/views/home_view.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return _fadeRoute(const HomeView(), '/home');
      case '/stateful':
        return _fadeRoute(const CounterView(), '/stateful');
      case '/provider':
        return _fadeRoute(const CounterProviderView(), '/provider');
      default:
        return _fadeRoute(const NotFoundView(), '/404');
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
        settings: RouteSettings(name: routeName),
        pageBuilder: (_, __, ___) => child,
        transitionDuration: const Duration(milliseconds: 350),
        transitionsBuilder: (_, animation, __, ___) => (kIsWeb)
            ? FadeTransition(
                opacity: animation,
                child: child,
              )
            : CupertinoPageTransition(
                primaryRouteAnimation: animation,
                secondaryRouteAnimation: __,
                child: child,
                linearTransition: true));
  }
}
