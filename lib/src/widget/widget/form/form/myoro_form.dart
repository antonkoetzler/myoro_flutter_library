import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widget/_form.dart';

/// Base form widget. Should always be used for any type of form content.
class MyoroForm<T> extends MyoroStatefulWidget {
  /// Controller in the case that the controller needs to be used outside of [builder]'s scope.
  final MyoroFormController<T>? controller;

  /// Configuration.
  final MyoroFormConfiguration<T>? configuration;

  /// Builder of the content within the form.
  final MyoroFormBuilder<T> builder;

  const MyoroForm({super.key, this.controller, this.configuration, required this.builder})
    : assert(
        (controller != null) ^ (configuration != null),
        '[MyoroForm<$T>]: [controller] (x)or [configuration] must be provided.',
      );

  @override
  State<MyoroForm<T>> createState() => _MyoroFormState<T>();
}

final class _MyoroFormState<T> extends State<MyoroForm<T>> {
  MyoroFormBuilder<T> get _builder => widget.builder;

  MyoroFormController<T>? _localController;
  MyoroFormController<T> get _controller {
    return widget.controller ?? (_localController ??= MyoroFormController(configuration: widget.configuration!));
  }

  @override
  void dispose() {
    _localController?.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    return ValueListenableBuilder(valueListenable: _controller, builder: (_, _, _) => _Form(_controller, _builder));
  }
}
