import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroAccordion].
class MyoroAccordionViewModel {
  MyoroAccordionViewModel(this.controller);

  final state = MyoroAccordionState();
  final MyoroAccordionController controller;

  /// Dispose function.
  void dispose() {
    state.dispose();
  }
}
