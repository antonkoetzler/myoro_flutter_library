// TODO

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Request to be executed when the input is triggered;
typedef MyoroSearchInputRequest<T> = FutureOr<T> Function(String text);

/// Search input. Shows a dropdown after making a search request.
final class MyoroSearchInput<T> extends StatefulWidget {
  /// [MyoroInput] configuration.
  final MyoroInputConfiguration configuration;

  /// Search request.
  final MyoroSearchInputRequest<T> request;

  const MyoroSearchInput({
    super.key,
    required this.configuration,
    required this.request,
  });

  @override
  State<MyoroSearchInput<T>> createState() => _MyoroSearchInputState<T>();
}

final class _MyoroSearchInputState<T> extends State<MyoroSearchInput<T>> {
  MyoroInputConfiguration get _configuration => widget.configuration;
  MyoroSearchInputRequest<T> get _request => widget.request;

  @override
  Widget build(BuildContext context) {
    return MyoroForm(
      builder: (result, status, controller) {
        return MyoroInput(
          configuration: _configuration,
        );
      },
    );
  }
}
