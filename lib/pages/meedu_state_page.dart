import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';

import '../controllers/state_notifier/state_demo_notifier.dart';

class MeeduStatePage extends StatelessWidget {
  const MeeduStatePage({super.key});
  static const String routeName = '/meedu-state-page';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Meedu State Notifier'),
        const SizedBox(height: 20),
        Consumer(builder: (_, ref, __) {
          final state = ref.watch(stateDemoNotifierProvider).state;
          return state.when(
            init: () => const Text('(Idle) Init State'),
            loading: () => const SizedBox(
              height: 20,
              width: 20,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
            success: (data) => Text('Success State Data Params : $data'),
            error: (error) => Text('Error State Message: $error'),
          );
        }),
        const SizedBox(height: 20),
        ElevatedButton(
            child: const Text('Change to Loading State'),
            onPressed: () {
              stateDemoNotifierProvider.read.changeToLoadingState();
            }),
        ElevatedButton(
            child: const Text('Change to Success State'),
            onPressed: () {
              stateDemoNotifierProvider.read.changeToSuccessState();
            }),
        ElevatedButton(
            child: const Text('Change to Error State'),
            onPressed: () {
              stateDemoNotifierProvider.read.changeToErrorState();
            }),
        ElevatedButton(
            child: const Text('Change to Init State'),
            onPressed: () {
              stateDemoNotifierProvider.read.changeToInitState();
            }),
      ],
    );
  }
}
