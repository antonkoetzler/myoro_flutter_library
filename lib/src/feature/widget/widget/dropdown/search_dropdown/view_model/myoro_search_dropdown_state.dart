part of 'myoro_search_dropdown_view_model.dart';

/// State of [MyoroSearchDropdownViewModel].
class MyoroSearchDropdownState<T> {
  /// Default constructor.
  MyoroSearchDropdownState(
    this.label,
    this.placeholder,
    this.dropdownType,
    this._itemBuilder,
    this.selectedItemBuilder,
    MyoroSearchDropdownRequest<T> requestCallback,
    this.onChanged,
    this.onFieldSubmitted,
    this.validation,
    this.focusNode,
  ) {
    _requestController = MyoroRequestController(() => requestCallback(_inputController.text));
  }

  /// [MyoroSearchDropdown.label].
  String label;

  /// [MyoroSearchDropdown.placeholder].
  String placeholder;

  /// [MyoroSearchDropdown.dropdownType].
  MyoroSearchDropdownDropdownTypeEnum dropdownType;

  /// [MyoroSearchDropdown.itemBuilder].
  MyoroMenuItemBuilder<T> _itemBuilder;

  /// [MyoroSearchDropdown.selectedItemBuilder].
  MyoroSearchDropdownSelectedItemBuilder<T> selectedItemBuilder;

  /// [MyoroSearchDropdown.onChanged].
  MyoroSearchDropdownOnChanged<T>? onChanged;

  /// [MyoroSearchDropdown.onFieldSubmitted].
  MyoroSearchDropdownOnFieldSubmitted<T>? onFieldSubmitted;

  /// [MyoroSearchDropdown.validation].
  MyoroSearchDropdownValidation<T>? validation;

  /// [MyoroSearchDropdown.focusNode].
  FocusNode? focusNode;

  /// [MyoroSearchDropdown.inputKey].
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
    return (index, item) {
      final menuItem = _itemBuilder(index, item);
      return menuItem.copyWith(
        onTapUp: (_, _) {
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
  set requestCallback(MyoroSearchDropdownRequest<T> requestCallback) {
    _requestController.setRequestCallback(() => requestCallback(_inputController.text));
  }

  /// [_selectedItemController] setter.
  set selectedItem(T? selectedItem) {
    _selectedItemController.value = selectedItem;
  }
}
