import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Generic input widget.
///
/// [MyoroInput] also serves as a base input for creating other inputs in the commons folder.
/// A [MyoroInputConfiguration] is passed to every other input [Widget] in the commons folder.
/// This means that [MyoroInput] should always be completely compatible with the other inputs.
final class MyoroInput extends StatefulWidget {
  /// Configuration of the input.
  final MyoroInputConfiguration configuration;

  /// Formatters of the input.
  ///
  /// Stored here rather than in [configuration] to have named constructors that preload formatters.
  final TextInputFormatter? formatter;

  /// Constructor for a generic input in which you may load any type of formatter or have no formatters.
  ///
  /// The named constructors of [MyoroInput] provide pre-inserted formatters.
  const MyoroInput({
    super.key,
    required this.configuration,
    this.formatter,
  });

  /// An input that auto formats a date.
  factory MyoroInput.date({
    Key? key,
    required MyoroInputConfiguration configuration,
  }) {
    return MyoroInput(
      key: key,
      configuration: configuration,
      formatter: MyoroDateInputFormatter(),
    );
  }

  /// An input that only accepts numbers (integers or decimal).
  factory MyoroInput.number({
    Key? key,
    // Minimum number accepted.
    double? min,
    // Maximum number accepted.
    double? max,
    // # of numbers to place after the decimal point. If this is null, it only accepts integers.
    int? decimalPlaces,
    required MyoroInputConfiguration configuration,
  }) {
    return MyoroInput(
      key: key,
      configuration: configuration,
      formatter: MyoroNumberInputFormatter(
        min: min,
        max: max,
        decimalPlaces: decimalPlaces,
      ),
    );
  }

  @override
  State<MyoroInput> createState() => _MyoroInputState();
}

final class _MyoroInputState extends State<MyoroInput> {
  MyoroInputConfiguration get _configuration => widget.configuration;
  TextInputFormatter? get _formatter => widget.formatter;

  TextEditingController? _localController;
  TextEditingController get _controller {
    return _configuration.controller ?? (_localController ??= TextEditingController());
  }

  bool get _showClearTextButton => _configuration.showClearTextButton != false && _controller.text.isNotEmpty;

  /// [bool] to keep track of whether the input is
  /// enabled or not if the checkbox is enabled.
  late bool _enabled;

  /// [ValueNotifier] to keep track of whether or not to show
  /// [_ClearTextButton] in [TextFormField.decoration.suffix].
  late final ValueNotifier<bool> _showClearTextButtonNotifier;

  Widget? get _label {
    if (_configuration.label == null) return null;
    return _Label(_configuration);
  }

  void _listener() => _showClearTextButtonNotifier.value = _showClearTextButton;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_listener);
    _enabled = _configuration.enabled ?? true;
    _showClearTextButtonNotifier = ValueNotifier(_showClearTextButton);

    /// [MyoroInput.number] init configuration.
    if (_formatter is MyoroNumberInputFormatter && _controller.text.isEmpty) {
      final formatter = _formatter as MyoroNumberInputFormatter;
      final text = (formatter.min ?? 0).toStringAsFixed(formatter.decimalPlaces ?? 0);
      _controller.text = text;
    }
  }

  @override
  void didUpdateWidget(covariant MyoroInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    _enabled = _configuration.enabled ?? true;
  }

  @override
  void dispose() {
    _controller.removeListener(_listener);
    if (_configuration.controller == null) _controller.dispose();
    _showClearTextButtonNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final border = _configuration.inputStyle.getBorder(context);
    final textStyle = _configuration.inputTextStyle ?? themeExtension.inputTextStyle;

    return Row(
      children: [
        if (_configuration.checkboxOnChanged != null) ...[
          _Checkbox(
            _controller,
            _enabled,
            onChanged: (bool value) {
              _configuration.checkboxOnChanged!.call(value, _controller.text);
              setState(() => _enabled = value);
            },
          ),
          SizedBox(width: themeExtension.spacing),
        ],
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: themeExtension.primaryColor,
              borderRadius: themeExtension.borderRadius,
            ),
            child: ValueListenableBuilder(
              valueListenable: _showClearTextButtonNotifier,
              builder: (_, bool showClearTextButton, __) {
                return TextFormField(
                  // So the checkbox prefix may be clicked
                  ignorePointers: false,
                  enabled: _enabled,
                  readOnly: _configuration.readOnly ?? false,
                  style: textStyle.withColor(
                    textStyle.color!.withValues(
                      alpha: _enabled ? 1 : themeExtension.disabledOpacity,
                    ),
                  ),
                  decoration: InputDecoration(
                    floatingLabelBehavior: themeExtension.labelBehavior,
                    label: _label,
                    hintText: _configuration.placeholder,
                    hintStyle: textStyle.withColor(
                      textStyle.color!.withValues(
                        alpha: themeExtension.disabledOpacity,
                      ),
                    ),
                    enabledBorder: border,
                    focusedBorder: border,
                    errorBorder: border.copyWith(
                      borderSide: border.borderSide.copyWith(
                        color: themeExtension.errorBorderColor,
                      ),
                    ),
                    disabledBorder: border.copyWith(
                      borderSide: border.borderSide.copyWith(
                        color: border.borderSide.color.withValues(
                          alpha: themeExtension.disabledOpacity,
                        ),
                      ),
                    ),
                    isDense: themeExtension.isDense,
                    suffixIcon: showClearTextButton
                        ? _ClearTextButton(
                            () {
                              if (_formatter == null) {
                                _controller.clear();
                              } else {
                                if (_formatter is MyoroNumberInputFormatter) {
                                  _controller.text = (_formatter as MyoroNumberInputFormatter).min?.toString() ?? '0';
                                } else if (_formatter is MyoroDateInputFormatter) {
                                  _controller.text = '00/00/0000';
                                } else if (_formatter is MyoroTimeInputFormatter) {
                                  _controller.text = (_formatter as MyoroTimeInputFormatter).mmSs ? '00:00' : '00:00:00';
                                }
                              }
                              _configuration.onChanged?.call(_controller.text);
                              _configuration.onCleared?.call();
                            },
                          )
                        : null,
                  ),
                  textAlign: _configuration.textAlign ?? TextAlign.start,
                  cursorHeight: themeExtension.cursorHeight,
                  validator: (_) => _configuration.validation?.call(_controller.text),
                  inputFormatters: _formatter != null ? [_formatter!] : null,
                  onFieldSubmitted: _configuration.onFieldSubmitted,
                  onChanged: _configuration.onChanged,
                  focusNode: _configuration.focusNode,
                  controller: _controller,
                );
              },
            ),
          ),
        ),
        if (_configuration.suffix != null) ...[
          SizedBox(width: themeExtension.spacing),
          _configuration.suffix!,
        ],
      ],
    );
  }
}

final class _Checkbox extends StatelessWidget {
  final TextEditingController controller;
  final bool enabled;
  final void Function(bool value) onChanged;

  const _Checkbox(
    this.controller,
    this.enabled, {
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return MyoroCheckbox(
      initialValue: enabled,
      onChanged: onChanged,
    );
  }
}

final class _Label extends StatelessWidget {
  final MyoroInputConfiguration configuration;

  const _Label(this.configuration);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        // Needed to center the text of the label.
        bottom: 5,
      ),
      child: Text(
        configuration.label!,
        style: configuration.labelTextStyle ?? context.resolveThemeExtension<MyoroInputThemeExtension>().labelTextStyle,
      ),
    );
  }
}

final class _ClearTextButton extends StatelessWidget {
  final VoidCallback _onPressed;

  const _ClearTextButton(this._onPressed);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();

    return IntrinsicWidth(
      child: Padding(
        padding: themeExtension.clearTextButtonPadding,
        child: MyoroIconTextHoverButton(
          icon: themeExtension.clearTextButtonIcon,
          onPressed: _onPressed,
        ),
      ),
    );
  }
}
