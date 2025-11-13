part of 'myoro_search_input_view_model.dart';

/// State of [MyoroSearchInputViewModel].
class MyoroSearchInputState<T> {
  /// Default constructor.
  MyoroSearchInputState(
    this.label,
    this.dropdownType,
    this._itemBuilder,
    this.selectedItemBuilder,
    MyoroSearchInputRequest<T> requestCallback,
    this.onChanged,
    this.onFieldSubmitted,
    this.validation,
    this.focusNode,
  ) {
    _requestController = MyoroRequestController(requestCallback: () => requestCallback(_inputController.text));
  }

  /// [MyoroSearchInput.label].
  String label;

  /// [MyoroSearchInput.dropdownType].
  MyoroSearchInputDropdownTypeEnum dropdownType;

  /// [MyoroSearchInput.itemBuilder].
  MyoroMenuItemBuilder<T> _itemBuilder;

  /// [MyoroSearchInput.selectedItemBuilder].
  MyoroSearchInputSelectedItemBuilder<T> selectedItemBuilder;

  /// [MyoroSearchInput.onChanged].
  MyoroSearchInputOnChanged<T>? onChanged;

  /// [MyoroSearchInput.onFieldSubmitted].
  MyoroSearchInputOnFieldSubmitted<T>? onFieldSubmitted;

  /// [MyoroSearchInput.validation].
  MyoroSearchInputValidation<T>? validation;

  /// [MyoroSearchInput.focusNode].
  FocusNode? focusNode;

  /// [MyoroSearchInput.inputKey].
  final _inputKey = GlobalKey();

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

  /// [_itemBuilder] getter.
  MyoroMenuItemBuilder<T> get itemBuilder {
    return (item, isLast) {
      final menuItem = _itemBuilder(item, isLast);
      return menuItem.copyWith(
        onTapUp: (context) {
          selectedItem = item;
          showing = false;
        },
      );
    };
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

  /// [_inputKey] getter.
  GlobalKey get inputKey {
    return _inputKey;
  }

  /// [_itemBuilder] setter.
  set itemBuilder(MyoroMenuItemBuilder<T> itemBuilder) {
    _itemBuilder = itemBuilder;
  }

  /// [_showingController] setter.
  set showing(bool value) {
    _showingController.value = value;
  }

  /// [_requestController] setter.
  set request(MyoroRequest<Set<T>> request) {
    _requestController.value = request;
  }

  /// [MyoroRequestController.requestCallback] setter.
  set requestCallback(MyoroSearchInputRequest<T> requestCallback) {
    _requestController.requestCallback = () => requestCallback(_inputController.text);
  }

  /// [_selectedItemController] setter.
  set selectedItem(T? selectedItem) {
    _selectedItemController.value = selectedItem;
  }
}
