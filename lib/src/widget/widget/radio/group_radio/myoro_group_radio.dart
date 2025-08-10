import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A group of [MyoroRadio]s.
class MyoroGroupRadio extends MyoroStatefulWidget {
  /// Configuration.
  final MyoroGroupRadioConfiguration configuration;

  const MyoroGroupRadio({super.key, required this.configuration});

  @override
  State<MyoroGroupRadio> createState() => _MyoroGroupRadioState();
}

final class _MyoroGroupRadioState extends State<MyoroGroupRadio> {
  MyoroGroupRadioConfiguration get _configuration => widget.configuration;

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
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroGroupRadioThemeExtension>();

    return ValueListenableBuilder(
      valueListenable: _controller,
      builder: (_, MyoroGroupRadioItems radios, _) {
        return Wrap(
          direction: _configuration.direction,
          spacing: _configuration.spacing ?? themeExtension.spacing,
          runSpacing: _configuration.runSpacing ?? themeExtension.runSpacing,
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
    );
  }
}
