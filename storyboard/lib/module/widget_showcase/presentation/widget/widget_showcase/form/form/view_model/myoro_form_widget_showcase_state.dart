part of 'myoro_form_widget_showcase_view_model.dart';

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
