import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_body.dart';
part '_widget/_input.dart';
part '_widget/_search_button.dart';
part '_widget/_search_section.dart';

/// Search input. Shows a dropdown after making a search request.
class MyoroSearchInput<T> extends StatefulWidget {
  /// Configuration.
  final MyoroSearchInputConfiguration<T> configuration;

  const MyoroSearchInput({super.key, required this.configuration});

  @override
  State<MyoroSearchInput<T>> createState() => _MyoroSearchInputState<T>();
}

final class _MyoroSearchInputState<T> extends State<MyoroSearchInput<T>> {
  late final _viewModel = MyoroSearchInputViewModel(configuration: widget.configuration);

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InheritedProvider.value(
      value: _viewModel,
      child: ValueListenableBuilder(
        valueListenable: _viewModel.itemsRequestController,
        builder: (_, _, _) => const _Body(),
      ),
    );
  }
}
