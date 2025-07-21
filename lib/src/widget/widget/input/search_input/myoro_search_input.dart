import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_body.dart';
part '_widget/_input.dart';
part '_widget/_search_button.dart';
part '_widget/_search_section.dart';

/// Search input. Shows a dropdown after making a search request.
class MyoroSearchInput<T> extends MyoroStatefulWidget {
  const MyoroSearchInput({super.key, super.createViewModel, required this.configuration});

  /// Configuration.
  final MyoroSearchInputConfiguration<T> configuration;

  @override
  State<MyoroSearchInput<T>> createState() => _MyoroSearchInputState<T>();
}

final class _MyoroSearchInputState<T> extends State<MyoroSearchInput<T>> {
  bool get _createViewModel => widget.createViewModel;

  MyoroSearchInputViewModel<T>? _localViewModel;
  MyoroSearchInputViewModel<T> get _viewModel {
    final viewModel =
        _createViewModel
            ? (_localViewModel ??= MyoroSearchInputViewModel())
            : context.read<MyoroSearchInputViewModel<T>>();
    return viewModel..configuration = widget.configuration;
  }

  @override
  void dispose() {
    _localViewModel?.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    final child = ValueListenableBuilder(
      valueListenable: _viewModel.itemsRequestController,
      builder: (_, itemsRequest, _) => _Body<T>(itemsRequest),
    );

    return _createViewModel ? InheritedProvider.value(value: _viewModel, child: child) : child;
  }
}
