import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Singular radio(box) [Widget].
class MyoroRadio extends StatefulWidget {
  /// Configuration.
  final MyoroRadioConfiguration configuration;

  const MyoroRadio({super.key, this.configuration = const MyoroRadioConfiguration()});

  @override
  State<MyoroRadio> createState() => _MyoroRadioState();
}

final class _MyoroRadioState extends State<MyoroRadio> {
  MyoroRadioConfiguration get _configuration => widget.configuration;

  MyoroRadioNotifier? _localNotifier;
  MyoroRadioNotifier get _notifier {
    return _configuration.notifier ??
        (_localNotifier ??= MyoroRadioNotifier(_configuration.initialValue));
  }

  @override
  void didUpdateWidget(covariant MyoroRadio oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_configuration.notifier != null) return;
    _notifier.value =
        _configuration.initialValue ?? MyoroRadioConfiguration.initialValueDefaultValue;
  }

  @override
  void dispose() {
    _localNotifier?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroRadioThemeExtension>();

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ValueListenableBuilder(
          valueListenable: _notifier,
          builder: (_, bool enabled, __) {
            return Radio(
              value: true,
              groupValue: enabled,
              toggleable: true,
              activeColor: themeExtension.activeColor,
              hoverColor: themeExtension.hoverColor,
              splashRadius: themeExtension.splashRadius,
              onChanged: (_) {
                _notifier.value = !enabled;
                _configuration.onChanged?.call(_notifier.value);
              },
            );
          },
        ),
        if (_configuration.label != null) ...[
          SizedBox(width: themeExtension.spacing),
          Flexible(
            child: Text(
              _configuration.label!,
              style: _configuration.labelTextStyle ?? themeExtension.labelTextStyle,
            ),
          ),
        ],
      ],
    );
  }
}
