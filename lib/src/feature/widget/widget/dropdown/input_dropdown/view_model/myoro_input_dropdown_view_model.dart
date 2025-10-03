import 'package:flutter/widgets.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_input_dropdown_state.dart';

/// View model of an input dropdown.
abstract class MyoroInputDropdownViewModel<
  T,
  CONFIGURATION extends MyoroInputDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
  CONTROLLER extends MyoroDropdownController<
    T,
    MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
    MyoroDropdownViewModel<
      T,
      MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
      MyoroMenuController<T, MyoroMenuViewModel<T, MyoroMenuConfiguration<T>>>
    >
  >
> {
  /// Default constructor.
  MyoroInputDropdownViewModel(CONFIGURATION configuration, CONTROLLER dropdownController)
    : _state = MyoroInputDropdownState(configuration, dropdownController);

  /// State.
  final MyoroInputDropdownState<T, CONFIGURATION, CONTROLLER> _state;

  /// [_state] getter.
  MyoroInputDropdownState<T, CONFIGURATION, CONTROLLER> get state => _state;

  /// Formats the input's [TextEditingController] when the selected items have changed.
  @protected
  void formatItems();

  /// Dispose function.
  void dispose() {
    state.dispose();
  }

  /// Toggles the dropdown.
  void toggleDropdown() {
    state.dropdownController.toggleDropdown();
  }

  /// Enables the dropdown.
  void enableDropdown() {
    state.dropdownController.enableDropdown();
  }

  /// Disables the dropdown.
  void disableDropdown() {
    state.dropdownController.disableDropdown();
  }

  /// Builds the [MyoroMenuStyle].
  MyoroMenuStyle buildMenuStyle(BuildContext context) {
    final menuThemeExtension = context.resolveThemeExtension<MyoroInputDropdownThemeExtension>();
    final menuStyle = state.dropdownController.menuStyle;
    final border = menuStyle?.border ?? menuThemeExtension.menuBorder;
    final borderRadius = menuStyle?.borderRadius ?? menuThemeExtension.menuBorderRadius;

    final configuration = state.configuration;
    final dropdownType = configuration.dropdownType;
    final isExpanded = dropdownType == MyoroDropdownTypeEnum.expanding;
    final isDropdown = dropdownType == MyoroDropdownTypeEnum.overlay;
    final isExpandedOrDropdown = isExpanded || isDropdown;

    return (menuStyle ?? const MyoroMenuStyle()).copyWith(
      border: border,
      borderProvided: isExpandedOrDropdown,
      borderRadius: borderRadius,
      borderRadiusProvided: isExpandedOrDropdown,
    );
  }

  /// Builds the dropdown [Widget].
  Widget buildDropdownWidget(BuildContext context, Widget inputWidget);
}
