import 'package:flutter/material.dart';
import 'package:portfolio_devpaul/providers/counter_provider.dart';
import 'package:portfolio_devpaul/ui/shared/custom_text_button.dart';
import 'package:provider/provider.dart';

class CounterProviderView extends StatelessWidget {
  const CounterProviderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CounterProvider(),
        child: const _CounterProviderPageBody());
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  const _CounterProviderPageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterProvider _counterProvider =
        Provider.of<CounterProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Counter Provider',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
            ),
          ),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Counter: ${_counterProvider.counter}',
              style: const TextStyle(fontSize: 60, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextButton(
              title: 'Decrementar',
              callback: () => _counterProvider.decrement(),
              color: Colors.redAccent,
            ),
            CustomTextButton(
                title: 'Incrementar',
                callback: () => _counterProvider.increment())
          ],
        ),
      ],
    );
  }
}
