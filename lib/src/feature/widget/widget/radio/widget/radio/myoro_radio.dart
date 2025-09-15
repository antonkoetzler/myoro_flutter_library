import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

/// Singular radio(box) [Widget].
class MyoroRadio extends StatefulWidget {
  /// Configuration.
  final MyoroRadioConfiguration configuration;

  /// Theme extension.
  final MyoroRadioThemeExtension? themeExtension;

  const MyoroRadio({
    super.key,
    this.configuration = const MyoroRadioConfiguration(),
    this.themeExtension,
  });

  @override
  State<MyoroRadio> createState() => _MyoroRadioState();
}

final class _MyoroRadioState extends State<MyoroRadio> {
  MyoroRadioConfiguration get _configuration => widget.configuration;

  MyoroRadioThemeExtension get _themeExtension {
    return widget.themeExtension ??
        Theme.of(context.read<BuildContext>()).extension<MyoroRadioThemeExtension>()!;
  }

  MyoroRadioController? _localController;
  MyoroRadioController get _controller {
    return _configuration.controller ??
        (_localController ??= MyoroRadioController(_configuration.initialValue));
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
  Widget build(_) {
    final spacing = _themeExtension.spacing ?? 0;
    final labelTextStyle = _themeExtension.labelTextStyle;
    final activeColor = _themeExtension.activeColor;
    final hoverColor = _themeExtension.hoverColor;
    final splashRadius = _themeExtension.splashRadius;

    return MyoroSingularThemeExtensionWrapper(
      themeExtension: _themeExtension,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: spacing,
        children: [
          ValueListenableBuilder(
            valueListenable: _controller,
            builder: (_, bool enabled, _) => Radio(
              value: true,
              groupValue: enabled,
              toggleable: true,
              activeColor: activeColor,
              hoverColor: hoverColor,
              splashRadius: splashRadius,
              onChanged: (_) {
                _controller.value = !enabled;
                _configuration.onChanged?.call(_controller.value);
              },
            ),
          ),
          if (_configuration.label.isNotEmpty) ...[
            Flexible(child: Text(_configuration.label, style: labelTextStyle)),
          ],
        ],
      ),
    );
  }
}
