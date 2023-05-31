import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';

import '../controllers/simple_notifier/simple_demo_notifier.dart';

class MeeduSimplePage extends StatelessWidget {
  const MeeduSimplePage({super.key});
  static const String routeName = '/meedu-simple-page';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Consumer(
          builder: (_, ref, __) {
            final state = ref.watch(simpleNotifierState);
            return CircleAvatar(
                radius: 100,
                backgroundColor: Colors.amber,
                child: Text(
                  state.count.toString(),
                  style: const TextStyle(fontSize: 50),
                ));
          },
        ),
        const SizedBox(height: 20),
        ElevatedButton(
            onPressed: () {
              simpleNotifierState.read.increment();
            },
            child: const Text('Increment')),
        const SizedBox(height: 5),
        ElevatedButton(
            onPressed: () {
              simpleNotifierState.read.decrement();
            },
            child: const Text('Decrement')),
      ],
    );
  }
}
