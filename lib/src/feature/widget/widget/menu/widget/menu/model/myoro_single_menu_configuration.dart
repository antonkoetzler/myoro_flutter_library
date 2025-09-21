import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_single_menu_configuration.g.dart';

/// Configuration of a [MyoroSingleMenu].
@immutable
@myoroModel
class MyoroSingleMenuConfiguration<T> extends MyoroMenuConfiguration<T> with _$MyoroSingleMenuConfigurationMixin {
  const MyoroSingleMenuConfiguration({
    required super.request,
    super.onEndReachedRequest,
    super.searchCallback,
    required super.itemBuilder,
    this.selectedItem,
    this.onChanged,
  });

  /// Initially selected item.
  final T? selectedItem;

  /// Callback executed when the selected item is changed.
  final MyoroSingleMenuOnChanged<T>? onChanged;

  @override
  MyoroSingleMenuConfiguration<T> copyWith({
    MyoroMenuRequest<T>? request,
    bool onEndReachedRequestProvided = true,
    MyoroMenuSearchCallback<T>? searchCallback,
    bool searchCallbackProvided = true,
    MyoroMenuItemBuilder<T>? itemBuilder,
    MyoroSingleMenuOnChanged<T>? onChanged,
    T? selectedItem,
    bool selectedItemProvided = true,
    bool onChangedProvided = true,
  }) {
    return MyoroSingleMenuConfiguration(
      request: request ?? this.request,
      searchCallback: searchCallbackProvided ? (searchCallback ?? this.searchCallback) : null,
      itemBuilder: itemBuilder ?? this.itemBuilder,
      selectedItem: selectedItemProvided ? (selectedItem ?? this.selectedItem) : null,
      onChanged: onChangedProvided ? (onChanged ?? this.onChanged) : null,
    );
  }
}
