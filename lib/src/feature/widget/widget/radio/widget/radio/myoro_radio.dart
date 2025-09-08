import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Singular radio(box) [Widget].
class MyoroRadio extends StatefulWidget {
  /// Configuration.
  final MyoroRadioConfiguration configuration;

  /// Theme extension.
  final MyoroRadioThemeExtension? themeExtension;

  const MyoroRadio({super.key, this.configuration = const MyoroRadioConfiguration(), this.themeExtension});

  @override
  State<MyoroRadio> createState() => _MyoroRadioState();
}

final class _MyoroRadioState extends State<MyoroRadio> {
  MyoroRadioConfiguration get _configuration => widget.configuration;

  MyoroRadioThemeExtension get _themeExtension {
    return widget.themeExtension ?? context.resolveThemeExtension<MyoroRadioThemeExtension>();
  }

  MyoroRadioController? _localController;
  MyoroRadioController get _controller {
    return _configuration.controller ?? (_localController ??= MyoroRadioController(_configuration.initialValue));
  }

  @override
  void didUpdateWidget(covariant MyoroRadio oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_configuration.controller != null) return;
    _controller.value = _configuration.initialValue ?? false;
  }

  @override
  void dispose() {
    _localController?.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    final child = Row(
      mainAxisSize: MainAxisSize.min,
      spacing: _themeExtension.spacing,
      children: [
        ValueListenableBuilder(
          valueListenable: _controller,
          builder: (_, bool enabled, _) {
            return Radio(
              value: true,
              groupValue: enabled,
              toggleable: true,
              activeColor: _themeExtension.activeColor,
              hoverColor: _themeExtension.hoverColor,
              splashRadius: _themeExtension.splashRadius,
              onChanged: (_) {
                _controller.value = !enabled;
                _configuration.onChanged?.call(_controller.value);
              },
            );
          },
        ),
        if (_configuration.label.isNotEmpty) ...[
          Flexible(
            child: Text(_configuration.label, style: _configuration.labelTextStyle ?? _themeExtension.labelTextStyle),
          ),
        ],
      ],
    );

    return MyoroSingularThemeExtensionWrapper(themeExtension: _themeExtension, child: child);
  }
}
