import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_menu_widget_showcase_repository.dart';
part 'myoro_menu_widget_showcase_state.dart';

/// View model of [MyoroMenuWidgetShowcase].
final class MyoroMenuWidgetShowcaseViewModel {
  /// State
  final _state = MyoroMenuWidgetShowcaseState();
  MyoroMenuWidgetShowcaseState get state => _state;

  /// Repository
  final _repository = MyoroMenuWidgetShowcaseRepository();

  /// Dispose function.
  void dispose() => _repository.dispose(_state);

  /// [MyoroMenuConfiguration.request]
  Future<Set<String>> request() => _repository.request();

  /// Configuration given [state].
  MyoroMenuConfiguration<String> get configuration => _repository.buildConfiguration(_state);
}
