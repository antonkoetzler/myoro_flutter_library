import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_dropdown_widget_showcase_repository.dart';
part 'myoro_dropdown_widget_showcase_state.dart';

/// View model of [MyoroDropdownWidgetShowcase].
final class MyoroDropdownWidgetShowcaseViewModel {
  final _repository = MyoroDropdownWidgetShowcaseRepository();

  final _state = MyoroDropdownWidgetShowcaseState();
  MyoroDropdownWidgetShowcaseState get state => _state;

  final _menuViewModel = MyoroMenuWidgetShowcaseViewModel();
  MyoroMenuWidgetShowcaseViewModel get menuViewModel => _menuViewModel;

  /// Dispose function.
  void dispose() {
    _state.dispose();
    _menuViewModel.dispose();
  }

  /// Constructs a [MyoroSingularDropdownConfiguration].
  MyoroSingularDropdownConfiguration<String> buildSingularDropdownConfiguration(BuildContext context) {
    return _repository.buildSingularDropdownConfiguration(context, _state, _menuViewModel);
  }

  /// Constructs a [MyoroMultiDropdownConfiguration].
  MyoroMultiDropdownConfiguration<String> buildMultiDropdownConfiguration(BuildContext context) {
    return _repository.buildMultiDropdownConfiguration(context, _state, _menuViewModel);
  }
}
