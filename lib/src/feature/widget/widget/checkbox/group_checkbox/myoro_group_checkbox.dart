import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A group of [MyoroCheckbox]s.
class MyoroGroupCheckbox extends StatefulWidget {
  const MyoroGroupCheckbox({
    super.key,
    this.notifier,
    this.checkboxes,
    this.configuration = const MyoroGroupCheckboxConfiguration(),
    this.style = const MyoroGroupCheckboxStyle(),
    this.checkboxStyle = const MyoroCheckboxStyle(),
  }) : assert(
         (notifier != null) ^ (checkboxes != null),
         '[MyoroGroupCheckbox]: [notifier] (x)or [checkboxes] must be provided.',
       );

  /// Controller.
  final MyoroGroupCheckboxNotifier? notifier;

  /// Checkboxes of the [MyoroGroupCheckbox].
  final MyoroGroupCheckboxItems? checkboxes;

  /// Configuration.
  final MyoroGroupCheckboxConfiguration configuration;

  /// Style.
  final MyoroGroupCheckboxStyle style;

  /// [MyoroCheckbox] style.
  final MyoroCheckboxStyle checkboxStyle;

  @override
  State<MyoroGroupCheckbox> createState() => _MyoroGroupCheckboxState();
}

final class _MyoroGroupCheckboxState extends State<MyoroGroupCheckbox> {
  MyoroGroupCheckboxConfiguration get _configuration => widget.configuration;
  MyoroGroupCheckboxStyle get _style => widget.style;
  MyoroCheckboxStyle get _checkboxStyle => widget.checkboxStyle;

  MyoroGroupCheckboxNotifier? _localNotifier;
  MyoroGroupCheckboxNotifier get _notifier {
    return widget.notifier ?? (_localNotifier ??= MyoroGroupCheckboxNotifier(checkboxes: widget.checkboxes!));
  }

  @override
  void dispose() {
    _localNotifier?.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroGroupCheckboxThemeExtension>();
    final spacing = _style.spacing ?? themeExtension.spacing ?? 0;
    final runSpacing = _style.runSpacing ?? themeExtension.runSpacing ?? 0;

    final direction = _configuration.direction;
    final onChanged = _configuration.onChanged;

    return ValueListenableBuilder(
      valueListenable: _notifier,
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
                  _notifier.toggle(entry.key, value);
                  onChanged?.call(entry.key, checkboxes);
                },
              ),
              style: _checkboxStyle,
            );
          }).toList(),
        );
      },
    );
  }
}
