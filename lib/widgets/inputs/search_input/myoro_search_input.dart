import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widgets/_body.dart';
part '_widgets/_input.dart';
part '_widgets/_search_button.dart';
part '_widgets/_search_section.dart';

/// Search input. Shows a dropdown after making a search request.
class MyoroSearchInput<T> extends StatefulWidget {
  /// Configuration.
  final MyoroSearchInputConfiguration<T> configuration;

  const MyoroSearchInput({super.key, required this.configuration});

  @override
  State<MyoroSearchInput<T>> createState() => _MyoroSearchInputState<T>();
}

final class _MyoroSearchInputState<T> extends State<MyoroSearchInput<T>> {
  MyoroSearchInputConfiguration<T> get _configuration => widget.configuration;

  late final _controller = MyoroSearchInputController(_configuration);
  MyoroRequestController<Set<T>> get _itemsRequestController => _controller.itemsRequestController;

  @override
  void didUpdateWidget(covariant MyoroSearchInput<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.configuration = _configuration;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _itemsRequestController,
      builder: (_, __, ___) => _Body(_controller),
    );
  }
}
