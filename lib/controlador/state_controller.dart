import 'package:get/state_manager.dart';

class StateController extends GetxController {
  var listState = [].obs;

  addState(state) {
    listState.add(state);
  }

  get listStates => listState;
}
