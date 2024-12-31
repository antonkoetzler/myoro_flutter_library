import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

/// Dropdown that selects a single item at a time.
final class MyoroSingularDropdown<T> extends StatefulWidget {
  /// Dropdown configuration.
  final MyoroDropdownConfiguration<T> configuration;

  /// Controller.
  final MyoroSingularDropdownController<T>? controller;

  const MyoroSingularDropdown({
    super.key,
    required this.configuration,
    this.controller,
  });

  @override
  State<MyoroSingularDropdown<T>> createState() => _MyoroSingularDropdownState<T>();
}

final class _MyoroSingularDropdownState<T> extends State<MyoroSingularDropdown<T>> {
  MyoroDropdownConfiguration<T> get _configuration => widget.configuration;

  MyoroSingularDropdownController<T>? _localController;
  MyoroSingularDropdownController<T> get _controller {
    return widget.controller ?? (_localController ??= MyoroSingularDropdownController<T>());
  }

  @override
  void dispose() {
    if (widget.controller == null) _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(value: _configuration),
        Provider.value(value: _controller),
      ],
      child: Stack(
        children: [
          _Input<T>(),
          _Dropdown<T>(),
        ],
      ),
    );
  }
}

final class _Input<T> extends StatelessWidget {
  const _Input();

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Stack(
        children: [
          MyoroInput(
            configuration: MyoroInputConfiguration(
              inputStyle: context.resolveThemeExtension<MyoroSingularDropdownThemeExtension>().inputStyle,
            ),
          ),
          Container(
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

final class _Dropdown<T> extends StatelessWidget {
  const _Dropdown();

  @override
  Widget build(BuildContext context) {
    final configuration = context.read<MyoroDropdownConfiguration<T>>();
    final controller = context.read<MyoroSingularDropdownController<T>>();

    return ValueListenableBuilder(
      valueListenable: controller.displayingDropdownNotifier,
      builder: (_, bool displayingDropdown, __) {
        if (!displayingDropdown) return const SizedBox.shrink();

        return MyoroMenu(
          dataConfiguration: configuration.dataConfiguration,
          itemBuilder: configuration.itemBuilder,
        );
      },
    );
  }
}
