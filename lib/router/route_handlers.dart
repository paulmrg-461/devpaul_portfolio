//Handlers
import 'package:fluro/fluro.dart';
import 'package:portfolio_devpaul/providers/page_provider.dart';
import 'package:portfolio_devpaul/ui/pages/home_page.dart';
import 'package:provider/provider.dart';

final homeHandler = Handler(handlerFunc: (context, parameters) {
  final page = parameters['page']!.first;
  final PageProvider pageProvider =
      Provider.of<PageProvider>(context!, listen: false);
  if (page != '/') {
    pageProvider.createScrollController(page);
    return const HomePage();
  }
});
