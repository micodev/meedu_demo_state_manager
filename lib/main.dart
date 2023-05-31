import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';
import 'package:meedu_demo/constants/routers.dart';
import 'package:meedu_demo/pages/initiate_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Meedu',
        navigatorKey: router.navigatorKey,
        navigatorObservers: [router.observer],
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.amber, brightness: Brightness.dark),
          useMaterial3: true,
        ),
        routes: Routers.routes,
        initialRoute: InitiatePage.routeName,
        builder: (context, child) {
          return Scaffold(
              appBar: AppBar(
                title: const Text('Flutter Meedu Samples'),
              ),
              body: MyPageContainer(child: child));
        });
  }
}

class MyPageContainer extends StatefulWidget {
  const MyPageContainer({super.key, this.child});
  final Widget? child;

  @override
  State<MyPageContainer> createState() => _MyPageContainerState();
}

class _MyPageContainerState extends State<MyPageContainer> {
  @override
  Widget build(BuildContext context) {
    return widget.child!;
  }
}
