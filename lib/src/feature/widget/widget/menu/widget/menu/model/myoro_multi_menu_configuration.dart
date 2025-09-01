import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_multi_menu_configuration.g.dart';

/// Configuration of a [MyoroMultiMenu].
@immutable
@myoroModel
class MyoroMultiMenuConfiguration<T> extends MyoroMenuConfiguration<T> with _$MyoroMultiMenuConfigurationMixin {
  const MyoroMultiMenuConfiguration({
    super.constraints,
    super.backgroundColor,
    super.border,
    super.borderRadius,
    required super.request,
    super.onEndReachedRequest,
    super.searchCallback,
    required super.itemBuilder,
    this.initiallySelectedItems = const {},
    this.onChanged,
  });

  /// Initially selected items.
  final Set<T> initiallySelectedItems;

  /// Callback executed when the selected item is changed.
  final MyoroMultiMenuOnChanged<T>? onChanged;

  @override
  MyoroMultiMenuConfiguration<T> copyWith({
    BoxConstraints? constraints,
    Color? backgroundColor,
    bool backgroundColorProvided = true,
    BoxBorder? border,
    bool borderProvided = true,
    BorderRadius? borderRadius,
    bool borderRadiusProvided = true,
    MyoroMenuRequest<T>? request,
    bool onEndReachedRequestProvided = true,
    MyoroMenuSearchCallback<T>? searchCallback,
    bool searchCallbackProvided = true,
    MyoroMenuItemBuilder<T>? itemBuilder,
    Set<T>? initiallySelectedItems,
    MyoroMultiMenuOnChanged<T>? onChanged,
    bool onChangedProvided = true,
  }) {
    return MyoroMultiMenuConfiguration(
      constraints: constraints ?? this.constraints,
      backgroundColor: backgroundColorProvided ? (backgroundColor ?? this.backgroundColor) : null,
      border: borderProvided ? (border ?? this.border) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? this.borderRadius) : null,
      request: request ?? this.request,
      searchCallback: searchCallbackProvided ? (searchCallback ?? this.searchCallback) : null,
      itemBuilder: itemBuilder ?? this.itemBuilder,
      initiallySelectedItems: initiallySelectedItems ?? this.initiallySelectedItems,
      onChanged: onChangedProvided ? (onChanged ?? this.onChanged) : null,
    );
  }
}
