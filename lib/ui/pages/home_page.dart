import 'package:flutter/material.dart';
import 'package:portfolio_devpaul/providers/page_provider.dart';
import 'package:portfolio_devpaul/ui/views/about_view.dart';
import 'package:portfolio_devpaul/ui/views/contact_view.dart';
import 'package:portfolio_devpaul/ui/views/home_view.dart';
import 'package:portfolio_devpaul/ui/views/location_view.dart';
import 'package:portfolio_devpaul/ui/views/footer_view.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: builBoxDecoration(),
        child: const _HomeBody(),
      ),
    );
  }

  BoxDecoration builBoxDecoration() => const BoxDecoration(
      gradient: LinearGradient(
          colors: [Colors.white, Colors.blueGrey],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5, 0.5]));
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageProvider pageProvider =
        Provider.of<PageProvider>(context, listen: false);

    return PageView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      controller: pageProvider.scrollController,
      children: const [
        LocationView(),
        HomeView(),
        AboutView(),
        ContactView(),
        FooterView(),
      ],
    );
  }
}
