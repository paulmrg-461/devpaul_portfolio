import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FittedBox(
      fit: BoxFit.contain,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'HomePage',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
