import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Abstract configuration model of a menu.
abstract class MyoroMenuConfiguration<T> {
  static const constraintsDefaultValue = BoxConstraints();

  const MyoroMenuConfiguration({
    this.constraints = constraintsDefaultValue,
    this.backgroundColor,
    this.border,
    this.borderRadius,
    required this.request,
    this.onEndReachedRequest,
    this.searchCallback,
    required this.itemBuilder,
  });

  /// Constraints of the menu.
  final BoxConstraints constraints;

  /// Background [Color].
  final Color? backgroundColor;

  /// [BoxBorder]
  final BoxBorder? border;

  /// [BorderRadius]
  final BorderRadius? borderRadius;

  /// Request that returns the [MyoroPagination] of the [MyoroMenu].
  final MyoroMenuRequest<T> request;

  /// Request that executes when the bottom of the menu is reached.
  final MyoroMenuOnEndReachedRequest<T>? onEndReachedRequest;

  /// Search callback that:
  /// 1. Places a searchbar at the top of the items;
  /// 2. Returns a [List<T>] of the filtered items given the query.
  final MyoroMenuSearchCallback<T>? searchCallback;

  /// Menu item builder.
  final MyoroMenuItemBuilder<T> itemBuilder;

  MyoroMenuConfiguration<T> copyWith({
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
  });
}
