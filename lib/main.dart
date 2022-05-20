import 'package:flutter/material.dart';
import 'package:portfolio_devpaul/providers/page_provider.dart';
import 'package:portfolio_devpaul/router/router.dart';
import 'package:portfolio_devpaul/ui/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  Flurorouter.configureRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => PageProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Home',
        home: const HomePage(),
        initialRoute: 'home',
        onGenerateRoute: Flurorouter.router.generator,
      ),
    );
  }
}
