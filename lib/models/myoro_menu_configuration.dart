import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Returns a [List] of [T] of the filtered items given the query.
typedef MyoroMenuSearchCallback<T> =
    Set<T> Function(String query, Set<T> items);

/// Request that returns the [MyoroPagination] of the [MyoroMenu].
typedef MyoroMenuRequest<T> = FutureOr<Set<T>> Function();

/// Request that executes when the bottom of the menu is reached.
typedef MyoroMenuOnEndReachedRequest<T> =
    FutureOr<Set<T>> Function(Set<T> items);

/// [MyoroMenuItem] builder from a generic object.
typedef MyoroMenuItemBuilder<T> = MyoroMenuItem Function(T item);

/// Configuration model of [MyoroMenu].
class MyoroMenuConfiguration<T> extends Equatable {
  /// Controller of the menu.
  final MyoroMenuController<T>? controller;

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
    this.controller,
    this.constraints = const BoxConstraints(),
    required this.request,
    this.onEndReachedRequest,
    this.searchCallback,
    required this.itemBuilder,
  });

  MyoroMenuConfiguration<T> copyWith({
    MyoroMenuController<T>? controller,
    bool controllerProvided = true,
    BoxConstraints? constraints,
    MyoroMenuRequest<T>? request,
    MyoroMenuOnEndReachedRequest<T>? onEndReachedRequest,
    bool onEndReachedRequestProvided = true,
    MyoroMenuSearchCallback<T>? searchCallback,
    bool searchCallbackProvided = true,
    MyoroMenuItemBuilder<T>? itemBuilder,
  }) {
    return MyoroMenuConfiguration(
      controller: controllerProvided ? (controller ?? this.controller) : null,
      constraints: constraints ?? this.constraints,
      request: request ?? this.request,
      onEndReachedRequest:
          onEndReachedRequestProvided
              ? (onEndReachedRequest ?? this.onEndReachedRequest)
              : null,
      searchCallback:
          searchCallbackProvided
              ? (searchCallback ?? this.searchCallback)
              : null,
      itemBuilder: itemBuilder ?? this.itemBuilder,
    );
  }

  @override
  List<Object?> get props {
    return [
      controller,
      constraints,
      request,
      onEndReachedRequest,
      searchCallback,
      itemBuilder,
    ];
  }

  @override
  String toString() =>
      'MyoroMenuConfiguration<$T>(\n'
      '  controller: $controller,\n'
      '  constraints: $constraints,\n'
      '  request: $request,\n'
      '  onEndReachedRequest: $onEndReachedRequest,\n'
      '  searchCallback: $searchCallback,\n'
      '  itemBuilder: $itemBuilder,\n'
      ');';
}
