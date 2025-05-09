import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function executed to make the request.
typedef MyoroResolverRequest<T> = FutureOr<T> Function();

/// Function executed when the request is completed successfully.
typedef MyoroResolverOnSuccess<T> = Function(T? result);

/// Function executed when the request is completed unsuccessfully.
typedef MyoroResolverOnError = Function(String errorMessage);

/// [Widget] builder that provides:
/// 1. [result]: Result of your request;
/// 2. [status]: [RequestEnum] status of the request;
/// 3. [controller]: [MyoroResolverController] connected to this instance so you don't need to create your own.
typedef MyoroResolverBuilder<T> =
    Widget Function(T? result, MyoroRequestEnum status, String? errorMessage, MyoroResolverController controller);

/// Configuration of [MyoroResolver].
///
/// TODO: Needs to be tested.
class MyoroResolverConfiguration<T> extends Equatable {
  /// Controller in the case that the controller needs to be used outside of [builder]'s scope.
  final MyoroResolverController? controller;

  /// Called when the request is executed successfully.
  final MyoroResolverOnSuccess<T>? onSuccess;

  /// Called when the request is executed unsuccessfully.
  final MyoroResolverOnError? onError;

  /// Function that will execute the request.
  final MyoroResolverRequest<T> request;

  /// [Widget] builder that provides the [T] result, status, & [MyoroResolverController].
  final MyoroResolverBuilder<T> builder;

  const MyoroResolverConfiguration({
    this.controller,
    this.onSuccess,
    this.onError,
    required this.request,
    required this.builder,
  });

  MyoroResolverConfiguration<T> copyWith({
    MyoroResolverController? controller,
    bool controllerProvided = true,
    MyoroResolverOnSuccess<T>? onSuccess,
    bool onSuccessProvided = true,
    MyoroResolverOnError? onError,
    bool onErrorProvided = true,
    MyoroResolverRequest<T>? request,
    MyoroResolverBuilder<T>? builder,
  }) {
    return MyoroResolverConfiguration(
      controller: controllerProvided ? (controller ?? this.controller) : null,
      onSuccess: onSuccessProvided ? (onSuccess ?? this.onSuccess) : null,
      onError: onErrorProvided ? (onError ?? this.onError) : null,
      request: request ?? this.request,
      builder: builder ?? this.builder,
    );
  }

  @override
  List<Object?> get props {
    return [controller, onSuccess, onError, request, builder];
  }

  @override
  String toString() =>
      'MyoroResolverConfiguration(\n'
      '  controller: $controller,\n'
      '  onSuccess: $onSuccess,\n'
      '  onError: $onError,\n'
      '  request: $request,\n'
      '  builder: $builder,\n'
      ');';
}
