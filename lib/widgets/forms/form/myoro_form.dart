import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widgets/_form.dart';

/// Base form widget. Should always be used for any type of form content.
class MyoroForm<T> extends StatefulWidget {
  /// Controller in the case that the controller needs to be used outside of [builder]'s scope.
  final MyoroFormController<T>? controller;

  /// Configuration.
  final MyoroFormConfiguration<T>? configuration;

  const MyoroForm({super.key, this.controller, this.configuration})
    : assert(
        (controller != null) ^ (configuration != null),
        '[MyoroForm<$T>]: [controller] (x)or [configuration] must be provided.',
      );

  @override
  State<MyoroForm<T>> createState() => _MyoroFormState<T>();
}

final class _MyoroFormState<T> extends State<MyoroForm<T>> {
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
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: _controller, builder: (_, _, _) => _Form(_controller));
  }
}
