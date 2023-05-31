import 'package:flutter/material.dart';
import '../pages/initiate_page.dart';
import '../pages/meedu_simple_page.dart';
import '../pages/meedu_state_page.dart';
import '../pages/meedu_with_params_page.dart';

class Routers {
  static Map<String, Widget Function(BuildContext)> routes = {
    MeeduSimplePage.routeName: (context) => const MeeduSimplePage(),
    MeeduStatePage.routeName: (context) => const MeeduStatePage(),
    InitiatePage.routeName: (context) => const InitiatePage(),
    MeeduWithParamsPage.routeName: (context) => MeeduWithParamsPage(),
  };
}
