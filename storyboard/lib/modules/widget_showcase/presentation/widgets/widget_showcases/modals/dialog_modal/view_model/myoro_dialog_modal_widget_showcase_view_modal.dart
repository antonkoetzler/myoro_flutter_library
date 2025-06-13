import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_dialog_modal_widget_showcase_state.dart';

/// View model of [MyoroDialogModalWidgetShowcase].
final class MyoroDialogModalWidgetShowcaseViewModal {
  /// State
  final _state = MyoroDialogModalWidgetShowcaseState();
  MyoroDialogModalWidgetShowcaseState get state => _state;

  /// View model of [MyoroModalWidgetShowcase].
  final _modalViewModel = MyoroModalWidgetShowcaseViewModel();
  MyoroModalWidgetShowcaseViewModel get modalViewModel => _modalViewModel;
}
