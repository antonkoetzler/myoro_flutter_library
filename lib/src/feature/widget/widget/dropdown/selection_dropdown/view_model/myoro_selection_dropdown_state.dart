part of 'myoro_selection_dropdown_view_model.dart';

/// State of [MyoroSelectionDropdownViewModel].
sealed class MyoroSelectionDropdownState<T> {
  /// [ValueNotifier] of showing controller.
  final _showingController = ValueNotifier(false);

  /// Dispose function.
  @mustCallSuper
  void dispose() {
    _showingController.dispose();
  }

  /// [_showingController] getter.
  ValueNotifier<bool> get showingController {
    return _showingController;
  }

  /// Getter of [showingController]'s value.
  bool get showing {
    return showingController.value;
  }

  /// Setter of [showingController]'s value.
  set showing(bool value) {
    showingController.value = value;
  }
}
