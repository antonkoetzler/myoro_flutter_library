import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function executed when the [MyoroRadio] is clicked.
typedef MyoroRadioOnChanged = void Function(bool enabled);

/// Singular radio(box) [Widget].
final class MyoroRadio extends StatefulWidget {
  /// [ValueNotifier] to manage state externally.
  final MyoroRadioNotifier? notifier;

  /// Value of the radio.
  ///
  /// Typically used as the initial value, but this member may also
  /// be used to change the value of the radio externally in the
  /// [Widget] state of the parent using [MyoroRadio] via rebuild.
  final bool? initialValue;

  /// Label to the right of the radio.
  final String? label;

  /// [TextStyle] of [label].
  final TextStyle? labelTextStyle;

  /// Function executed when the [MyoroRadio] is clicked.
  final MyoroRadioOnChanged? onChanged;

  const MyoroRadio({
    super.key,
    this.notifier,
    this.initialValue,
    this.label,
    this.labelTextStyle,
    this.onChanged,
  }) : assert(
         !(notifier != null && initialValue != null),
         '[MyoroRadio]: If [notifier] is provided, set the initial '
         'value within the [MyoroRadioNotifier]\'s constructor.',
       );

  @override
  State<MyoroRadio> createState() => _MyoroRadioState();
}

final class _MyoroRadioState extends State<MyoroRadio> {
  bool get _initialValue => widget.initialValue ?? false;
  String? get _label => widget.label;
  TextStyle? get _labelTextStyle => widget.labelTextStyle;
  MyoroRadioOnChanged? get _onChanged => widget.onChanged;

  MyoroRadioNotifier? _localNotifier;
  MyoroRadioNotifier get _notifier {
    return widget.notifier ??
        (_localNotifier ??= MyoroRadioNotifier(_initialValue));
  }

  @override
  void didUpdateWidget(covariant MyoroRadio oldWidget) {
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
    final themeExtension =
        context.resolveThemeExtension<MyoroRadioThemeExtension>();

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
                _onChanged?.call(_notifier.value);
              },
            );
          },
        ),
        if (_label != null) ...[
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
