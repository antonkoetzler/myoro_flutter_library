import 'package:flutter/material.dart';
import 'package:storybook/storybook.dart';

part 'myoro_scrollables_widget_showcase_screen_state.dart';

/// View model for [MyoroScrollablesWidgetShowcaseScreen].
final class MyoroScrollablesWidgetShowcaseScreenViewModel extends ChangeNotifier {
  /// State.
  final _state = MyoroScrollablesWidgetShowcaseScreenState();

  /// [_state] getter.
  MyoroScrollablesWidgetShowcaseScreenState get state => _state;
}
