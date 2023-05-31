import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';

// ignore: must_be_immutable
class MeeduWithParamsPage extends PageWithArgumentsWidget {
  MeeduWithParamsPage({super.key});
  static const String routeName = '/meedu-with-params-page';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Meedu With Params'),
        const SizedBox(height: 20),
        ElevatedButton(
            child: const Text('Show Params'),
            onPressed: () {
              showParams();
            }),
      ],
    );
  }

  late Map<String, dynamic> params;
  @override
  void onInit(RouteSettings settings) {
    params = settings.arguments as Map<String, dynamic>;
    showParams();
  }

  void showParams() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ScaffoldMessenger.of(router.context!).showSnackBar(
        SnackBar(
          content: Text('Params: $params'),
          duration: const Duration(seconds: 2),
        ),
      );
    });
  }
}
