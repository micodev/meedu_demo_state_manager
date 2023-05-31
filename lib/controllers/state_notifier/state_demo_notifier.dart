import 'package:flutter_meedu/meedu.dart';
import 'package:meedu_demo/controllers/state_notifier/model_state.dart';

final stateDemoNotifierProvider =
    StateProvider<StateDemoNotifier, ModelState>((ref) {
  return StateDemoNotifier(const ModelState.init());
});

class StateDemoNotifier extends StateNotifier<ModelState> {
  StateDemoNotifier(super.initialState);
  void changeToLoadingState() {
    state = const ModelState.loading();
  }

  void changeToSuccessState() {
    state = const ModelState.success(
      data: 'Success',
    );
  }

  void changeToErrorState() {
    state = const ModelState.error(
      'Error',
    );
  }

  void changeToInitState() {
    state = const ModelState.init();
  }
}
