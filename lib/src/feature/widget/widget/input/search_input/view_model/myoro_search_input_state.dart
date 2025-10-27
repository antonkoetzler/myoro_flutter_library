part of 'myoro_search_input_view_model.dart';

/// State of [MyoroSearchInputViewModel].
class MyoroSearchInputState {
  /// Showing controller.
  final _showingController = ValueNotifier(false);

  /// Input (search bar) controller.
  final _searchController = TextEditingController();

  /// Dispose function.
  void dispose() {
    _showingController.dispose();
    _searchController.dispose();
  }

  /// [_showingController] getter.
  ValueNotifier<bool> get showingController {
    return _showingController;
  }

  /// Getter of [_showingController]'s value.
  bool get showing {
    return _showingController.value;
  }

  /// [_searchController] getter.
  TextEditingController get searchController {
    return _searchController;
  }

  /// [_showingController] setter.
  set showing(bool value) {
    _showingController.value = value;
  }
}
