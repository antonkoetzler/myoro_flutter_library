import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_singular_menu_configuration.g.dart';

/// Configuration of a [MyoroSingularMenu].
@immutable
@myoroModel
class MyoroSingularMenuConfiguration<T> extends MyoroMenuConfiguration<T> with _$MyoroSingularMenuConfigurationMixin {
  const MyoroSingularMenuConfiguration({
    required super.request,
    super.onEndReachedRequest,
    super.searchCallback,
    required super.itemBuilder,
    this.initiallySelectedItem,
    this.onChanged,
  });

  /// Initially selected item.
  final T? initiallySelectedItem;

  /// Callback executed when the selected item is changed.
  final MyoroSingularMenuOnChanged<T>? onChanged;

  @override
  MyoroSingularMenuConfiguration<T> copyWith({
    MyoroMenuRequest<T>? request,
    bool onEndReachedRequestProvided = true,
    MyoroMenuSearchCallback<T>? searchCallback,
    bool searchCallbackProvided = true,
    MyoroMenuItemBuilder<T>? itemBuilder,
    MyoroSingularMenuOnChanged<T>? onChanged,
    T? initiallySelectedItem,
    bool initiallySelectedItemProvided = true,
    bool onChangedProvided = true,
  }) {
    return MyoroSingularMenuConfiguration(
      request: request ?? this.request,
      searchCallback: searchCallbackProvided ? (searchCallback ?? this.searchCallback) : null,
      itemBuilder: itemBuilder ?? this.itemBuilder,
      initiallySelectedItem: initiallySelectedItemProvided
          ? (initiallySelectedItem ?? this.initiallySelectedItem)
          : null,
      onChanged: onChangedProvided ? (onChanged ?? this.onChanged) : null,
    );
  }
}
