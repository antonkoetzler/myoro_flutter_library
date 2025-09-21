import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_body.dart';
part '_widget/_input.dart';
part '_widget/_search_button.dart';
part '_widget/_search_section.dart';

/// Search input. Shows a dropdown after making a search request.
class MyoroSearchInput<T> extends StatefulWidget {
  const MyoroSearchInput({super.key, required this.configuration, this.themeExtension});

  /// Configuration.
  final MyoroSearchInputConfiguration<T> configuration;

  /// Theme extension.
  final MyoroSearchInputThemeExtension? themeExtension;

  @override
  State<MyoroSearchInput<T>> createState() => _MyoroSearchInputState<T>();
}

final class _MyoroSearchInputState<T> extends State<MyoroSearchInput<T>> {
  MyoroSearchInputConfiguration<T> get _configuration {
    return widget.configuration;
  }

  MyoroSearchInputThemeExtension get _themeExtension {
    final colorScheme = context.colorScheme;
    return widget.themeExtension ?? MyoroSearchInputThemeExtension.builder(colorScheme);
  }

  late final MyoroSearchInputViewModel<T> _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = MyoroSearchInputViewModel(_configuration);
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    return MyoroSingleThemeExtensionWrapper(
      themeExtension: _themeExtension,
      child: InheritedProvider.value(
        value: _viewModel,
        child: ValueListenableBuilder(
          valueListenable: _viewModel.itemsRequestNotifier,
          builder: (_, itemsRequest, _) => _Body<T>(itemsRequest),
        ),
      ),
    );
  }
}
