import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function that is executed when the checkbox is changed.
typedef MyoroCheckboxOnChanged = void Function(bool value);

/// A checkbox that can have a label on the right side of it.
class MyoroCheckbox extends StatefulWidget {
  /// Configuration.
  final MyoroCheckboxConfiguration configuration;

  const MyoroCheckbox({super.key, required this.configuration});

  @override
  State<MyoroCheckbox> createState() => _MyoroCheckboxState();
}

final class _MyoroCheckboxState extends State<MyoroCheckbox> {
  MyoroCheckboxConfiguration get _configuration => widget.configuration;

  MyoroCheckboxNotifier? _localNotifier;
  MyoroCheckboxNotifier get _notifier {
    return _configuration.notifier ??
        (_localNotifier ??= MyoroCheckboxNotifier(_configuration.initialValue));
  }

  @override
  void didUpdateWidget(covariant MyoroCheckbox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_configuration.notifier != null) return;
    _notifier.value = _configuration.initialValue ?? false;
  }

  @override
  void dispose() {
    _localNotifier?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroCheckboxThemeExtension>();

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ValueListenableBuilder(
          valueListenable: _notifier,
          builder: (_, bool value, __) {
            // This [SizedBox] removes the default margin in [Checkbox].
            return SizedBox(
              width: 20,
              height: 20,
              child: Checkbox(
                value: value,
                activeColor: themeExtension.activeColor,
                checkColor: themeExtension.checkColor,
                hoverColor: themeExtension.hoverColor,
                focusColor: themeExtension.focusColor,
                splashRadius: themeExtension.splashRadius,
                onChanged: (_) {
                  _configuration.onChanged?.call(!_notifier.value);
                  _notifier.value = !_notifier.value;
                },
              ),
            );
          },
        ),
        if (_configuration.label?.isNotEmpty == true) ...[
          SizedBox(width: themeExtension.spacing),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Text(
                _configuration.label!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: _configuration.labelTextStyle ?? themeExtension.labelTextStyle,
              ),
            ),
          ),
        ],
      ],
    );
  }
}
