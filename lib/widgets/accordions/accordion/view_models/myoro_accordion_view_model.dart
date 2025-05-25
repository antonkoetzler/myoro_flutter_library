import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_accordion_view_model_interface.dart';
part 'myoro_accordion_view_model_state.dart';

/// View model of [MyoroAccordion].
class MyoroAccordionViewModel implements MyoroAccordionViewModelInterface {
  MyoroAccordionViewModel(this.controller);

  final state = MyoroAccordionViewModelState();
  final MyoroAccordionController controller;

  @override
  void dispose() {
    state.dispose();
  }
}
