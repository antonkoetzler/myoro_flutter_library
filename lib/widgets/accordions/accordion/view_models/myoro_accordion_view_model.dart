import 'package:myoro_flutter_library/myoro_flutter_library.dart';

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
