//initialRoute
import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';
import 'package:meedu_demo/pages/meedu_state_page.dart';
import 'package:meedu_demo/pages/meedu_with_params_page.dart';

import 'meedu_simple_page.dart';

class InitiatePage extends StatelessWidget {
  const InitiatePage({super.key});
  static const String routeName = '/initiate-page';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () {
              router.pushNamed(MeeduSimplePage.routeName);
            },
            child: const Text('Meedu Simple Notifier')),
        ElevatedButton(
            onPressed: () {
              router.pushNamed(MeeduStatePage.routeName);
            },
            child: const Text('Meedu State Notifier')),
        ElevatedButton(
            onPressed: () {
              router.pushNamed(MeeduWithParamsPage.routeName, arguments: {
                'name': 'Flutter Meedu',
                'age': 1,
              });
            },
            child: const Text('Pass Argument Notifier')),
      ],
    );
  }
}
