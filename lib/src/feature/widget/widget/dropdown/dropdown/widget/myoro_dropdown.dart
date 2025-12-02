import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_menu.dart';
part '../_widget/_myoro_dropdown_state.dart';

/// Generic dropdown.
class MyoroDropdown<T> extends StatefulWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroDropdownStyle();

  /// Default value of [showSearchBar].
  static const showSearchBarDefaultValue = MyoroMenu.showSearchBarDefaultValue;

  /// Default constructor.
  const MyoroDropdown({
    super.key,
    this.style = styleDefaultValue,
    required this.showingController,
    this.items,
    this.selectedItems = const {},
    this.showSearchBar = showSearchBarDefaultValue,
    this.dropdownType,
    this.targetKey,
    required this.itemBuilder,
    this.footer,
    required this.child,
  });

  /// Style.
  final MyoroDropdownStyle style;

  /// Showing controller.
  final ValueNotifier<bool> showingController;

  /// Items.
  final Set<T>? items;

  /// Selected items.
  final Set<T> selectedItems;

  /// Search callback.
  final bool showSearchBar;

  /// Dropdown type.
  ///
  /// Default is [MyoroDropdownTypeEnum.bottomSheet] on mobile and [MyoroDropdownTypeEnum.expanding] on other platforms.
  final MyoroDropdownTypeEnum? dropdownType;

  /// Target key.
  final GlobalKey? targetKey;

  /// Item builder.
  final MyoroMenuItemBuilder<T> itemBuilder;

  /// [MyoroMenu.footer].
  final Widget? footer;

  /// Child.
  final Widget child;

  /// Create state function.
  @override
  State<MyoroDropdown<T>> createState() {
    return _MyoroDropdownState<T>();
  }
}
