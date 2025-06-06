import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_menu_configuration.g.dart';

/// Configuration model of [MyoroMenu].
@myoroModel
class MyoroMenuConfiguration<T> with $MyoroMenuConfigurationMixin<T> {
  /// Constraints of the menu.
  final BoxConstraints constraints;

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

  const MyoroMenuConfiguration({
    this.constraints = const BoxConstraints(),
    required this.request,
    this.onEndReachedRequest,
    this.searchCallback,
    required this.itemBuilder,
  });
}
