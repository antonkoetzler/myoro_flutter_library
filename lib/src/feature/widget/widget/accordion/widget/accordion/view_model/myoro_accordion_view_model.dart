import 'package:flutter/widgets.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_accordion_state.dart';

/// View model of [MyoroAccordion].
class MyoroAccordionViewModel {
  MyoroAccordionViewModel(MyoroAccordionConfiguration configuration) : _state = MyoroAccordionState(configuration);

  /// State
  final MyoroAccordionState _state;

  /// [_state] getter.
  MyoroAccordionState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Toggles a [MyoroAccordionItem].
  void toggleItem(MyoroAccordionItem item) {
    _state.selectedItem = item == _state.selectedItem ? null : item;
  }
}
