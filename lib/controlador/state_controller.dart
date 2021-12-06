import 'package:get/state_manager.dart';

class StateController extends GetxController {
  var listState = [].obs;

  get listState2 => null;

  addState(state) {
    listState.add(state);
  }

  get listStates => listState;
}
