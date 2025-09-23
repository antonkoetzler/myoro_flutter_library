import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_multi_menu_configuration.g.dart';

/// Configuration of a [MyoroMultiMenu].
@immutable
@myoroModel
class MyoroMultiMenuConfiguration<T> extends MyoroMenuConfiguration<T> with _$MyoroMultiMenuConfigurationMixin {
  const MyoroMultiMenuConfiguration({
    required super.request,
    super.onEndReachedRequest,
    super.searchCallback,
    required super.itemBuilder,
    this.selectedItems = const {},
    this.onChanged,
  });

  /// Initially selected items.
  final Set<T> selectedItems;

  /// Callback executed when the selected item is changed.
  final MyoroMultiMenuOnChanged<T>? onChanged;

  @override
  MyoroMultiMenuConfiguration<T> copyWith({
    MyoroMenuRequest<T>? request,
    bool onEndReachedRequestProvided = true,
    MyoroMenuSearchCallback<T>? searchCallback,
    bool searchCallbackProvided = true,
    MyoroMenuItemBuilder<T>? itemBuilder,
    Set<T>? selectedItems,
    MyoroMultiMenuOnChanged<T>? onChanged,
    bool onChangedProvided = true,
  }) {
    return MyoroMultiMenuConfiguration(
      request: request ?? this.request,
      searchCallback: searchCallbackProvided ? (searchCallback ?? this.searchCallback) : null,
      itemBuilder: itemBuilder ?? this.itemBuilder,
      selectedItems: selectedItems ?? this.selectedItems,
      onChanged: onChangedProvided ? (onChanged ?? this.onChanged) : null,
    );
  }
}
