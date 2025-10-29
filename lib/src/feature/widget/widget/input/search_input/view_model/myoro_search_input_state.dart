part of 'myoro_search_input_view_model.dart';

/// State of [MyoroSearchInputViewModel].
class MyoroSearchInputState<T> {
  /// Default constructor.
  MyoroSearchInputState(this.selectedItemBuilder, MyoroSearchInputRequest<T> request) {
    _requestController = MyoroRequestController(requestCallback: () => request(_inputController.text));
  }

  /// [MyoroSearchInput.selectedItemBuilder].
  final MyoroSearchInputSelectedItemBuilder<T> selectedItemBuilder;

  /// Showing controller.
  final _showingController = ValueNotifier(false);

  /// Input (search bar) controller.
  final _inputController = TextEditingController();

  /// Request controller.
  late final MyoroRequestController<Set<T>> _requestController;

  /// Selected item controller.
  final _selectedItemController = ValueNotifier<T?>(null);

  /// Dispose function.
  void dispose() {
    _showingController.dispose();
    _inputController.dispose();
    _requestController.dispose();
    _selectedItemController.dispose();
  }

  /// [_showingController] getter.
  ValueNotifier<bool> get showingController {
    return _showingController;
  }

  /// Getter of [_showingController]'s value.
  bool get showing {
    return _showingController.value;
  }

  /// [_inputController] getter.
  TextEditingController get inputController {
    return _inputController;
  }

  /// [_requestController] getter.
  MyoroRequestController<Set<T>> get requestController {
    return _requestController;
  }

  /// [_selectedItemController] getter.
  ValueNotifier<T?> get selectedItemController {
    return _selectedItemController;
  }

  /// Getter of [_selectedItemController]'s value.
  T? get selectedItem {
    return _selectedItemController.value;
  }

  /// [_showingController] setter.
  set showing(bool value) {
    _showingController.value = value;
  }

  /// [_requestController] setter.
  set request(MyoroRequest<Set<T>> request) {
    _requestController.value = request;
  }

  /// [_selectedItemController] setter.
  set selectedItem(T? selectedItem) {
    _selectedItemController.value = selectedItem;
  }
}
