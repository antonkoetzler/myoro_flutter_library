import 'package:flutter/material.dart';

/// State of [MyoroFormWidgetShowcaseViewModel].
final class MyoroFormWidgetShowcaseState {
  /// [TextEditingController] of [_Input].
  final _inputController = TextEditingController();
  TextEditingController get inputController => _inputController;

  /// Dispose function.
  void dispose() {
    _inputController.dispose();
  }
}
