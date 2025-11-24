part of 'myoro_filter_button_view_model.dart';

/// State of [MyoroFilterButtonViewModel].
sealed class MyoroFilterButtonState<T> {
  /// Default value of [dropdownType].
  static const dropdownTypeDefaultValue = MyoroDropdownTypeEnum.bottomSheet;

  /// Default constructor.
  MyoroFilterButtonState(
    this.buttonLabel,
    this.closeButtonIcon,
    this.clearButtonText,
    this.applyButtonText,
    this.dropdownType,
    this.items,
    this.itemLabelBuilder,
  ) : assert(buttonLabel.isNotEmpty, '[_Base] (filter button): [buttonLabel] must be provided.'),
      assert(items.isNotEmpty, '[_Base] (filter button): [items] must be provided.'),
      _buttonTextController = ValueNotifier(buttonLabel);

  /// Label.
  final String buttonLabel;

  /// Close button icon.
  final IconData closeButtonIcon;

  /// Clear button text.
  final String clearButtonText;

  /// Apply button text.
  final String applyButtonText;

  /// Type of the dropdown.
  final MyoroDropdownTypeEnum dropdownType;

  /// [MyoroDropdown.showingController].
  final _showingController = ValueNotifier(false);

  /// [ValueNotifier] of the text of the button of the filter button.
  ///
  /// When there are value(s) of a filter button selected, the selected item(s) are concatenated and displayed in the button.
  final ValueNotifier<String> _buttonTextController;

  /// Items.
  final Set<T> items;

  /// Item label builder.
  final MyoroFilterButtonItemLabelBuilder<T> itemLabelBuilder;

  /// Dispose function.
  @mustCallSuper
  void dispose() {
    _showingController.dispose();
    _buttonTextController.dispose();
  }

  /// [_showingController] getter.
  ValueNotifier<bool> get showingController {
    return _showingController;
  }

  /// [_showingController]'s [bool] getter.
  bool get showing {
    return _showingController.value;
  }

  /// [_buttonTextController] getter.
  ValueNotifier<String> get buttonTextController {
    return _buttonTextController;
  }

  /// [_buttonTextController]'s [String] getter.
  String get buttonText {
    return _buttonTextController.value;
  }

  /// [_showingController]'s setter.
  set showing(bool value) {
    _showingController.value = value;
  }

  /// [_buttonTextController]'s setter.
  set buttonText(String value) {
    _buttonTextController.value = value;
  }
}
