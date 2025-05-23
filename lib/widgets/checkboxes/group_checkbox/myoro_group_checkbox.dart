import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A group of [MyoroCheckbox]s.
class MyoroGroupCheckbox extends StatefulWidget {
  /// Controller.
  final MyoroGroupCheckboxController? controller;

  /// Configuration.
  final MyoroGroupCheckboxConfiguration configuration;

  const MyoroGroupCheckbox({super.key, this.controller, required this.configuration});

  @override
  State<MyoroGroupCheckbox> createState() => _MyoroGroupCheckboxState();
}

final class _MyoroGroupCheckboxState extends State<MyoroGroupCheckbox> {
  MyoroGroupCheckboxConfiguration get _configuration => widget.configuration;

  MyoroGroupCheckboxController? _localController;
  MyoroGroupCheckboxController get _controller {
    return widget.controller ?? (_localController ??= MyoroGroupCheckboxController(_configuration));
  }

  @override
  void didUpdateWidget(covariant MyoroGroupCheckbox oldWidget) {
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
    final themeExtension = context.resolveThemeExtension<MyoroGroupCheckboxThemeExtension>();

    return ValueListenableBuilder(
      valueListenable: _controller,
      builder: (_, MyoroGroupCheckboxItems checkboxes, __) {
        return Wrap(
          direction: _configuration.direction,
          spacing: _configuration.spacing ?? themeExtension.spacing,
          runSpacing: _configuration.runSpacing ?? themeExtension.runSpacing,
          children:
              checkboxes.entries.map<Widget>((MapEntry<String, bool> entry) {
                return MyoroCheckbox(
                  configuration: MyoroCheckboxConfiguration(
                    label: entry.key,
                    initialValue: entry.value,
                    onChanged: (bool value) {
                      _controller.toggle(entry.key, value);
                      _configuration.onChanged?.call(entry.key, checkboxes);
                    },
                  ),
                );
              }).toList(),
        );
      },
    );
  }
}
