import 'package:flutter/material.dart';
import 'package:portfolio_devpaul/ui/shared/custom_app_menu.dart';

class MainLayoutPage extends StatelessWidget {
  final Widget content;
  const MainLayoutPage({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const CustomAppMenu(),
        const Spacer(),
        Expanded(child: content),
        const Spacer()
      ],
    ));
  }
}
