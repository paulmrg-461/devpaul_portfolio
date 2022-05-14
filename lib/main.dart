import 'package:flutter/material.dart';
import 'package:portfolio_devpaul/locator.dart';
import 'package:portfolio_devpaul/router/router.dart';
import 'package:portfolio_devpaul/services/navigation_service.dart';
import 'package:portfolio_devpaul/ui/layout/main_layout_page.dart';

void main() {
  setupLocator();
  Flurorouter.configureRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DevPaul',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (context, child) => MainLayoutPage(
          content: child ?? const CircularProgressIndicator.adaptive()),
    );
  }
}
