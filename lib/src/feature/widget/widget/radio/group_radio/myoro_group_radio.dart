import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

/// A group of [MyoroRadio]s.
class MyoroGroupRadio extends StatefulWidget {
  /// Configuration.
  final MyoroGroupRadioConfiguration configuration;

  /// Style.
  final MyoroGroupRadioStyle style;

  const MyoroGroupRadio({super.key, required this.configuration, this.style = const MyoroGroupRadioStyle()});

  @override
  State<MyoroGroupRadio> createState() => _MyoroGroupRadioState();
}

final class _MyoroGroupRadioState extends State<MyoroGroupRadio> {
  MyoroGroupRadioConfiguration get _configuration => widget.configuration;
  MyoroGroupRadioStyle get _style => widget.style;

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
    final themeExtension = context.resolveThemeExtension<MyoroGroupRadioThemeExtension>();
    final spacing = _style.spacing ?? themeExtension.spacing ?? 0;
    final runSpacing = _style.runSpacing ?? themeExtension.runSpacing ?? 0;

    return MultiProvider(
      providers: [
        Provider.value(value: _style),
        InheritedProvider.value(value: _configuration),
      ],
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
