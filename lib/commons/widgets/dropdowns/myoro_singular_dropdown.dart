import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Dropdown that selects a single item at a time.
final class MyoroSingularDropdown<T> extends StatefulWidget {
  /// Dropdown configuration.
  final MyoroDropdownConfiguration<T> configuration;

  const MyoroSingularDropdown({super.key, required this.configuration});

  @override
  State<MyoroSingularDropdown<T>> createState() => _MyoroSingularDropdownState<T>();
}

final class _MyoroSingularDropdownState<T> extends State<MyoroSingularDropdown<T>> {
  MyoroDropdownConfiguration<T> get _configuration => widget.configuration;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _Input(_configuration),
        _Dropdown(_configuration),
      ],
    );
  }
}

final class _Input<T> extends StatelessWidget {
  final MyoroDropdownConfiguration<T> _configuration;

  const _Input(this._configuration);

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
  final MyoroDropdownConfiguration<T> _configuration;

  const _Dropdown(this._configuration);

  @override
  Widget build(BuildContext context) {
    return MyoroMenu(
      dataConfiguration: _configuration.dataConfiguration,
      itemBuilder: _configuration.itemBuilder,
    );
  }
}
