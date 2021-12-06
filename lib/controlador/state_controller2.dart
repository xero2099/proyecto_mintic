import 'package:get/state_manager.dart';

class StateController2 extends GetxController {
  var listState2 = [].obs;

  addState(state) {
    listState2.add(state);
  }

  get listStates2 => listState2;
}
