import 'package:flutter/material.dart';
import 'package:portfolio_devpaul/ui/shared/custom_text_button.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Counter Stateful',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
            ),
          ),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Counter: $counter',
              style: const TextStyle(fontSize: 60, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextButton(
              title: 'Decrementar',
              callback: () => setState(() => counter--),
              color: Colors.redAccent,
            ),
            CustomTextButton(
                title: 'Incrementar',
                callback: () => setState(() => counter++)),
          ],
        ),
      ],
    );
  }
}
