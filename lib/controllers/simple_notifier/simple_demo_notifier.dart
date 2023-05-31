import 'package:flutter_meedu/meedu.dart';

final simpleNotifierState = SimpleProvider((ref) => SimpleDemoNotifier());

class SimpleDemoNotifier extends SimpleNotifier {
  int count = 0;
  void increment() {
    count++;
    notify();
  }

  void decrement() {
    count--;
    notify();
  }
}
