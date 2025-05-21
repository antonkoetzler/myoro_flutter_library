import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widgets/_form.dart';

/// Base form widget. Should always be used for any type of form content.
class MyoroForm<T> extends StatefulWidget {
  /// Configuration.
  final MyoroFormConfiguration<T> configuration;

  const MyoroForm({super.key, required this.configuration});

  @override
  State<MyoroForm<T>> createState() => _MyoroFormState<T>();
}

final class _MyoroFormState<T> extends State<MyoroForm<T>> {
  MyoroFormConfiguration<T> get _configuration => widget.configuration;

  MyoroFormController<T>? _localController;
  MyoroFormController<T> get _controller {
    return _configuration.controller ?? (_localController ??= MyoroFormController(_configuration));
  }

  @override
  void initState() {
    super.initState();
    _controller.fetch(_configuration.request);
  }

  @override
  void didUpdateWidget(covariant MyoroForm<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.configuration = _configuration;
  }

  @override
  void dispose() {
    _localController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: _controller, builder: (_, __, ___) => _Form(_controller));
  }
}
