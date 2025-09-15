import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

/// A group of [MyoroCheckbox]s.
class MyoroGroupCheckbox extends StatefulWidget {
  const MyoroGroupCheckbox({
    super.key,
    this.controller,
    this.checkboxes,
    this.configuration = const MyoroGroupCheckboxConfiguration(),
    this.themeExtension,
  }) : assert(
         (controller != null) ^ (checkboxes != null),
         '[MyoroGroupCheckbox]: [controller] (x)or [checkboxes] must be provided.',
       );

  /// Controller.
  final MyoroGroupCheckboxNotifier? controller;

  /// Checkboxes of the [MyoroGroupCheckbox].
  final MyoroGroupCheckboxItems? checkboxes;

  /// Configuration.
  final MyoroGroupCheckboxConfiguration configuration;

  /// Theme exdtension.
  final MyoroGroupCheckboxThemeExtension? themeExtension;

  @override
  State<MyoroGroupCheckbox> createState() => _MyoroGroupCheckboxState();
}

final class _MyoroGroupCheckboxState extends State<MyoroGroupCheckbox> {
  MyoroGroupCheckboxConfiguration get _configuration => widget.configuration;
  MyoroGroupCheckboxThemeExtension get _themeExtension {
    return widget.themeExtension ??
        Theme.of(context.read<BuildContext>()).extension<MyoroGroupCheckboxThemeExtension>()!;
  }

  MyoroGroupCheckboxNotifier? _localController;
  MyoroGroupCheckboxNotifier get _controller {
    return widget.controller ??
        (_localController ??= MyoroGroupCheckboxNotifier(checkboxes: widget.checkboxes!));
  }

  @override
  void dispose() {
    _localController?.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    final spacing = _themeExtension.spacing ?? 0;
    final runSpacing = _themeExtension.runSpacing ?? 0;

    final direction = _configuration.direction;
    final onChanged = _configuration.onChanged;

    return MyoroSingularThemeExtensionWrapper(
      themeExtension: _themeExtension,
      child: ValueListenableBuilder(
        valueListenable: _controller,
        builder: (_, checkboxes, _) {
          return Wrap(
            direction: direction,
            spacing: spacing,
            runSpacing: runSpacing,
            children: checkboxes.entries.map<Widget>((entry) {
              return MyoroCheckbox(
                configuration: MyoroCheckboxConfiguration(
                  label: entry.key,
                  value: entry.value,
                  onChanged: (bool value) {
                    _controller.toggle(entry.key, value);
                    onChanged?.call(entry.key, checkboxes);
                  },
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
