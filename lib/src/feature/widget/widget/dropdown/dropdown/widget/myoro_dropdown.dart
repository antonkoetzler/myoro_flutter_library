import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_menu.dart';
part '../_widget/_myoro_dropdown_state.dart';

/// Generic dropdown.
class MyoroDropdown<T> extends StatefulWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroDropdownStyle();

  /// Default constructor.
  const MyoroDropdown({
    super.key,
    this.style = styleDefaultValue,
    required this.showingController,
    this.items,
    this.selectedItems = const {},
    this.searchCallback,
    this.dropdownType,
    this.targetKey,
    required this.itemBuilder,
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
  final MyoroMenuSearchCallback<T>? searchCallback;

  /// Dropdown type.
  ///
  /// Default is [MyoroDropdownTypeEnum.bottomSheet] on mobile and [MyoroDropdownTypeEnum.expanding] on other platforms.
  final MyoroDropdownTypeEnum? dropdownType;

  /// Target key.
  final GlobalKey? targetKey;

  /// Item builder.
  final MyoroMenuItemBuilder<T> itemBuilder;

  /// Child.
  final Widget child;

  /// Create state function.
  @override
  State<MyoroDropdown<T>> createState() => _MyoroDropdownState<T>();
}
