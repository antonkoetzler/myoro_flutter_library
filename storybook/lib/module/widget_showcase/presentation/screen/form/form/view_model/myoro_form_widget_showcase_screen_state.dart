import 'package:flutter/material.dart';

/// State of [MyoroFormWidgetShowcaseScreenViewModel].
final class MyoroFormWidgetShowcaseScreenState {
  /// [TextEditingController] of [_Input].
  final _inputController = TextEditingController();
  TextEditingController get inputController => _inputController;

  /// Dispose function.
  void dispose() {
    _inputController.dispose();
  }
}
