import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function that is executed when the checkbox is changed.
typedef MyoroCheckboxOnChanged = Function(bool value);

/// A checkbox that can have a label on the right side of it.
final class MyoroCheckbox extends StatefulWidget {
  /// [ValueNotifier] for more complex situations where [onChanged] does not suffice.
  final MyoroCheckboxNotifier? notifier;

  /// Label at the right of the checkbox.
  final String? label;

  /// Text style of [label].
  final TextStyle? labelTextStyle;

  /// Initial value of the checkbox.
  final bool? initialValue;

  /// Function that is executed when the checkbox is changed.
  final MyoroCheckboxOnChanged? onChanged;

  const MyoroCheckbox({
    super.key,
    this.label,
    this.labelTextStyle,
    this.initialValue,
    this.onChanged,
    this.notifier,
  }) : assert(
          !(notifier != null && initialValue != null),
          '[MyoroCheckbox]: If [notifier] is provided, set the initial '
          'value within the [MyoroRadioNotifier]\'s constructor.',
        );

  @override
  State<MyoroCheckbox> createState() => _MyoroCheckboxState();
}

final class _MyoroCheckboxState extends State<MyoroCheckbox> {
  String? get _label => widget.label;
  TextStyle? get _labelTextStyle => widget.labelTextStyle;
  bool get _initialValue => widget.initialValue ?? false;
  MyoroCheckboxOnChanged? get _onChanged => widget.onChanged;

  MyoroCheckboxNotifier? _localNotifier;
  MyoroCheckboxNotifier get _notifier {
    return widget.notifier ?? (_localNotifier ??= MyoroCheckboxNotifier(_initialValue));
  }

  @override
  void didUpdateWidget(covariant MyoroCheckbox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.notifier != null) return;
    _notifier.value = _initialValue;
  }

  @override
  void dispose() {
    if (widget.notifier == null) _notifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroCheckboxThemeExtension>();

    return Row(
      mainAxisSize: MainAxisSize.min,
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
                  _onChanged?.call(!_notifier.value);
                  _notifier.value = !_notifier.value;
                },
              ),
            );
          },
        ),
        if (_label?.isNotEmpty == true) ...[
          SizedBox(width: themeExtension.spacing),
          Flexible(
            child: Text(
              _label!,
              style: _labelTextStyle ?? themeExtension.labelTextStyle,
            ),
          ),
        ],
      ],
    );
  }
}
