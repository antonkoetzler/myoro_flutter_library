import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widget/_search_button.dart';

/// Search input.
class MyoroSearchInputV2<T> extends StatefulWidget {
  const MyoroSearchInputV2({super.key, required this.configuration});

  final MyoroSearchInputV2Configuration<T> configuration;

  @override
  State<MyoroSearchInputV2<T>> createState() => _MyoroSearchInputV2State<T>();
}

final class _MyoroSearchInputV2State<T> extends State<MyoroSearchInputV2<T>> {
  MyoroSearchInputV2Configuration<T> get _configuration {
    return widget.configuration;
  }

  late final MyoroSingleInputDropdownController<T> _controller;

  @override
  void initState() {
    super.initState();
    final inputController = TextEditingController();
    _controller = MyoroSingleInputDropdownController<T>(
      inputController: inputController,
      configuration: MyoroSingleInputDropdownConfiguration(
        menuConfiguration: MyoroSingleMenuConfiguration(
          request: () => _configuration.menuConfiguration.request(inputController.text),
          onEndReachedRequest: _configuration.menuConfiguration.onEndReachedRequest,
          itemBuilder: _configuration.menuConfiguration.itemBuilder,
        ),
        selectedItemBuilder: _configuration.selectedItemBuilder,
      ),
    );
  }

  @override
  void dispose() {
    _controller.inputController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    return MyoroSingleInputDropdown<T>(
      controller: _controller,
      inputSuffix: _SearchButton<T>(
        () => _controller
          ..disableDropdown()
          ..enableDropdown(),
      ),
    );
  }
}
