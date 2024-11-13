import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function that is executed when the checkbox is changed.
typedef MyoroCheckboxOnChanged = Function(bool value);

/// A checkbox that can have a label on the right side of it.
final class MyoroCheckbox extends StatefulWidget {
  /// Label at the right of the checkbox.
  final String? label;

  /// Text style of [label].
  final TextStyle? labelTextStyle;

  /// Initial value of the checkbox.
  final bool? initialValue;

  /// Function that is executed when the checkbox is changed.
  final MyoroCheckboxOnChanged? onChanged;

  /// Controller for more complex situations where [onChanged] does not suffice.
  final ValueNotifier<bool>? controller;

  const MyoroCheckbox({
    super.key,
    this.label,
    this.labelTextStyle,
    this.initialValue,
    this.onChanged,
    this.controller,
  });

  @override
  State<MyoroCheckbox> createState() => _MyoroCheckboxState();
}

final class _MyoroCheckboxState extends State<MyoroCheckbox> {
  String? get _label => widget.label;
  TextStyle? get _labelTextStyle => widget.labelTextStyle;
  bool get _initialValue => widget.initialValue ?? false;
  MyoroCheckboxOnChanged? get _onChanged => widget.onChanged;

  ValueNotifier<bool>? _localController;
  ValueNotifier<bool> get _controller {
    return widget.controller ?? (_localController ??= ValueNotifier<bool>(_initialValue));
  }

  @override
  void initState() {
    super.initState();
    // Sync the provided controllers value with [_initialValue].
    if (widget.controller == null) return;
    _controller.value = _initialValue;
  }

  @override
  void dispose() {
    if (widget.controller == null) _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroCheckboxThemeExtension>();

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ValueListenableBuilder(
          valueListenable: _controller,
          builder: (_, bool value, __) {
            return Checkbox(
              value: value,
              hoverColor: themeExtension.hoverColor,
              focusColor: themeExtension.focusColor,
              splashRadius: themeExtension.splashRadius,
              onChanged: (_) {
                _controller.value = !_controller.value;
                _onChanged?.call(!_controller.value);
              },
            );
          },
        ),
        if (_label?.isNotEmpty == true) ...[
          SizedBox(width: themeExtension.spacing),
          Text(
            _label!,
            style: _labelTextStyle ?? themeExtension.labelTextStyle,
          ),
        ],
      ],
    );
  }
}
