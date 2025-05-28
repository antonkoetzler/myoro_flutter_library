import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration model of [MyoroMenu].
class MyoroMenuConfiguration<T> extends Equatable {
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

  MyoroMenuConfiguration<T> copyWith({
    BoxConstraints? constraints,
    MyoroMenuRequest<T>? request,
    MyoroMenuOnEndReachedRequest<T>? onEndReachedRequest,
    bool onEndReachedRequestProvided = true,
    MyoroMenuSearchCallback<T>? searchCallback,
    bool searchCallbackProvided = true,
    MyoroMenuItemBuilder<T>? itemBuilder,
  }) {
    return MyoroMenuConfiguration(
      constraints: constraints ?? this.constraints,
      request: request ?? this.request,
      onEndReachedRequest: onEndReachedRequestProvided ? (onEndReachedRequest ?? this.onEndReachedRequest) : null,
      searchCallback: searchCallbackProvided ? (searchCallback ?? this.searchCallback) : null,
      itemBuilder: itemBuilder ?? this.itemBuilder,
    );
  }

  @override
  List<Object?> get props {
    return [constraints, request, onEndReachedRequest, searchCallback, itemBuilder];
  }

  @override
  String toString() =>
      'MyoroMenuConfiguration<$T>(\n'
      '  constraints: $constraints,\n'
      '  request: $request,\n'
      '  onEndReachedRequest: $onEndReachedRequest,\n'
      '  searchCallback: $searchCallback,\n'
      '  itemBuilder: $itemBuilder,\n'
      ');';
}
