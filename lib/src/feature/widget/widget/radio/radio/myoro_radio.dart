import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

/// Single radio(box) [Widget].
class MyoroRadio extends StatefulWidget {
  /// Configuration.
  final MyoroRadioConfiguration configuration;

  /// Style.
  final MyoroRadioStyle style;

  const MyoroRadio({
    super.key,
    this.configuration = const MyoroRadioConfiguration(),
    this.style = const MyoroRadioStyle(),
  });

  @override
  State<MyoroRadio> createState() => _MyoroRadioState();
}

final class _MyoroRadioState extends State<MyoroRadio> {
  MyoroRadioConfiguration get _configuration => widget.configuration;

  MyoroRadioStyle get _style {
    return widget.style;
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
  Widget build(_) {
    final spacing = _style.spacing ?? 0;
    final labelTextStyle = _style.labelTextStyle;
    final activeColor = _style.activeColor;
    final hoverColor = _style.hoverColor;
    final splashRadius = _style.splashRadius;

    return Provider.value(
      value: _style,
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
          if (_configuration.label.isNotEmpty) ...[Flexible(child: Text(_configuration.label, style: labelTextStyle))],
        ],
      ),
    );
  }
}
