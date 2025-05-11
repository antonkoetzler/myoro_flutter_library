import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A group of [MyoroRadio]s.
class MyoroGroupRadio extends StatefulWidget {
  /// Configuration.
  final MyoroGroupRadioConfiguration configuration;

  const MyoroGroupRadio({super.key, required this.configuration});

  @override
  State<MyoroGroupRadio> createState() => _MyoroGroupRadioState();
}

final class _MyoroGroupRadioState extends State<MyoroGroupRadio> {
  MyoroGroupRadioConfiguration get _configuration => widget.configuration;

  MyoroGroupRadioNotifier? _localNotifier;
  MyoroGroupRadioNotifier get _notifier {
    return _configuration.notifier ??
        (_localNotifier ??= MyoroGroupRadioNotifier(_configuration.radios!));
  }

  @override
  void dispose() {
    _localNotifier?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroGroupRadioThemeExtension>();

    return ValueListenableBuilder(
      valueListenable: _notifier,
      builder: (_, MyoroGroupRadioItems radios, __) {
        return Wrap(
          direction: _configuration.direction,
          spacing: _configuration.spacing ?? themeExtension.spacing,
          runSpacing: _configuration.runSpacing ?? themeExtension.runSpacing,
          children:
              radios.entries.map<Widget>((MapEntry<String, bool> entry) {
                return MyoroRadio(
                  configuration: MyoroRadioConfiguration(
                    label: entry.key,
                    initialValue: entry.value,
                    onChanged: (_) {
                      _notifier.enable(entry.key);
                      _configuration.onChanged?.call(entry.key, _notifier.radios);
                    },
                  ),
                );
              }).toList(),
        );
      },
    );
  }
}
