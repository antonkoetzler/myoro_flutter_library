import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A group of [MyoroRadio]s.
class MyoroGroupRadio extends StatefulWidget {
  /// Configuration.
  final MyoroGroupRadioConfiguration configuration;

  /// Theme extension.
  final MyoroGroupRadioThemeExtension? themeExtension;

  const MyoroGroupRadio({super.key, required this.configuration, this.themeExtension});

  @override
  State<MyoroGroupRadio> createState() => _MyoroGroupRadioState();
}

final class _MyoroGroupRadioState extends State<MyoroGroupRadio> {
  MyoroGroupRadioConfiguration get _configuration => widget.configuration;

  MyoroGroupRadioThemeExtension get _themeExtension {
    return widget.themeExtension ?? const MyoroGroupRadioThemeExtension.builder();
  }

  MyoroGroupRadioController? _localController;
  MyoroGroupRadioController get _controller {
    return _configuration.controller ?? (_localController ??= MyoroGroupRadioController(_configuration.radios!));
  }

  @override
  void dispose() {
    _localController?.dispose();
    super.dispose();
  }

  @override
  Widget build(_) {
    final spacing = _themeExtension.spacing ?? 0;
    final runSpacing = _themeExtension.runSpacing ?? 0;

    return MyoroSingularThemeExtensionWrapper(
      themeExtension: _themeExtension,
      child: ValueListenableBuilder(
        valueListenable: _controller,
        builder: (_, MyoroGroupRadioItems radios, _) {
          return Wrap(
            direction: _configuration.direction,
            spacing: spacing,
            runSpacing: runSpacing,
            children: radios.entries.map<Widget>((MapEntry<String, bool> entry) {
              return MyoroRadio(
                configuration: MyoroRadioConfiguration(
                  label: entry.key,
                  initialValue: entry.value,
                  onChanged: (_) {
                    _controller.enable(entry.key);
                    _configuration.onChanged?.call(entry.key, _controller.radios);
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
