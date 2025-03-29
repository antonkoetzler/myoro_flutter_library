import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
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
    this.configuration = const MyoroInputConfiguration(),
    this.formatter,
  });

  static Finder finder({
    MyoroInputConfiguration? configuration,
    bool configurationEnabled = false,
    MyoroInputStyleEnum? inputStyle,
    bool inputStyleEnabled = false,
    TextAlign? textAlign,
    bool textAlignEnabled = false,
    TextStyle? inputTextStyle,
    bool inputTextStyleEnabled = false,
    String? label,
    bool labelEnabled = false,
    String? placeholder,
    bool placeholderEnabled = false,
    TextStyle? labelTextStyle,
    bool labelTextStyleEnabled = false,
    Widget? suffix,
    bool suffixEnabled = false,
    bool? enabled,
    bool enabledEnabled = false,
    bool? readOnly,
    bool readOnlyEnabled = false,
    bool? showClearTextButton,
    bool showClearTextButtonEnabled = false,
    MyoroInputCheckboxOnChanged? checkboxOnChanged,
    bool checkboxOnChangedEnabled = false,
    MyoroInputValidation? validation,
    bool validationEnabled = false,
    MyoroInputOnFieldSubmitted? onFieldSubmitted,
    bool onFieldSubmittedEnabled = false,
    MyoroInputOnChanged? onChanged,
    bool onChangedEnabled = false,
    VoidCallback? onCleared,
    bool onClearedEnabled = false,
    FocusNode? focusNode,
    bool focusNodeEnabled = false,
    TextEditingController? controller,
    bool controllerEnabled = false,
    TextInputFormatter? formatter,
    bool formatterEnabled = false,
  }) {
    return find.byWidgetPredicate(
      (Widget w) =>
          w is MyoroInput &&
          (configurationEnabled ? w.configuration == configuration : true) &&
          (inputStyleEnabled
              ? w.configuration.inputStyle == inputStyle
              : true) &&
          (textAlignEnabled ? w.configuration.textAlign == textAlign : true) &&
          (inputTextStyleEnabled
              ? w.configuration.inputTextStyle == inputTextStyle
              : true) &&
          (labelEnabled ? w.configuration.label == label : true) &&
          (placeholderEnabled
              ? w.configuration.placeholder == placeholder
              : true) &&
          (labelTextStyleEnabled
              ? w.configuration.labelTextStyle == labelTextStyle
              : true) &&
          (suffixEnabled ? w.configuration.suffix == suffix : true) &&
          (enabledEnabled ? w.configuration.enabled == enabled : true) &&
          (readOnlyEnabled ? w.configuration.readOnly == readOnly : true) &&
          (showClearTextButtonEnabled
              ? w.configuration.showClearTextButton == showClearTextButton
              : true) &&
          (checkboxOnChangedEnabled
              ? w.configuration.checkboxOnChanged == checkboxOnChanged
              : true) &&
          (validationEnabled
              ? w.configuration.validation == validation
              : true) &&
          (onFieldSubmittedEnabled
              ? w.configuration.onFieldSubmitted == onFieldSubmitted
              : true) &&
          (onChangedEnabled ? w.configuration.onChanged == onChanged : true) &&
          (onClearedEnabled ? w.configuration.onCleared == onCleared : true) &&
          (focusNodeEnabled ? w.configuration.focusNode == focusNode : true) &&
          (controllerEnabled
              ? w.configuration.controller == controller
              : true) &&
          (formatterEnabled ? w.formatter == formatter : true),
    );
  }

  /// An input that auto formats a date.
  factory MyoroInput.date({
    Key? key,
    MyoroInputConfiguration configuration = const MyoroInputConfiguration(),
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
    double min = 0,
    double? max,
    int decimalPlaces = 0,
    MyoroInputConfiguration configuration = const MyoroInputConfiguration(),
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

  /// An input that formats a time in MM:SS or HH:MM:SS.
  factory MyoroInput.time({
    Key? key,
    MyoroTimeInputFormatterEnum formatType = MyoroTimeInputFormatterEnum.mmSs,
    MyoroInputConfiguration configuration = const MyoroInputConfiguration(),
  }) {
    return MyoroInput(
      key: key,
      configuration: configuration,
      formatter: MyoroTimeInputFormatter(formatType: formatType),
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
    return _configuration.controller ??
        (_localController ??= TextEditingController());
  }

  bool get _showClearTextButton =>
      _configuration.showClearTextButton != false &&
      _controller.text.isNotEmpty;

  /// [bool] to keep track of whether the input is
  /// enabled or not if the checkbox is enabled.
  late bool _enabled;

  /// [ValueNotifier] to keep track of whether or not to show
  /// [_ClearTextButton] in [TextFormField.decoration.suffix].
  late final ValueNotifier<bool> _showClearTextButtonNotifier;

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
      final text = formatter.min.toStringAsFixed(formatter.decimalPlaces);
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
    final themeExtension =
        context.resolveThemeExtension<MyoroInputThemeExtension>();

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
          child: _TextFormField(
            _configuration,
            _formatter,
            _enabled,
            _showClearTextButtonNotifier,
            _controller,
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

  const _Checkbox(this.controller, this.enabled, {required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return MyoroCheckbox(initialValue: enabled, onChanged: onChanged);
  }
}

final class _TextFormField extends StatelessWidget {
  final MyoroInputConfiguration _configuration;
  final TextInputFormatter? _formatter;
  final bool _enabled;
  final ValueNotifier<bool> _showClearTextButtonNotifier;
  final TextEditingController _controller;

  const _TextFormField(
    this._configuration,
    this._formatter,
    this._enabled,
    this._showClearTextButtonNotifier,
    this._controller,
  );

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroInputThemeExtension>();
    final border = _configuration.getBorder(context);
    final textStyle =
        _configuration.inputTextStyle ?? themeExtension.inputTextStyle;

    return Container(
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
              label:
                  _configuration.label != null ? _Label(_configuration) : null,
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
              suffixIcon:
                  showClearTextButton
                      ? _ClearTextButton(() {
                        if (_formatter == null) {
                          _controller.clear();
                        } else {
                          if (_formatter is MyoroNumberInputFormatter) {
                            _controller.text =
                                (_formatter as MyoroNumberInputFormatter).min
                                    .toString();
                          } else if (_formatter is MyoroDateInputFormatter) {
                            _controller.text = '00/00/0000';
                          } else if (_formatter is MyoroTimeInputFormatter) {
                            _controller.text =
                                (_formatter as MyoroTimeInputFormatter)
                                    .formatType
                                    .emptyValue;
                          }
                        }
                        _configuration.onChanged?.call(_controller.text);
                        _configuration.onCleared?.call();
                      })
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
        style:
            configuration.labelTextStyle ??
            context
                .resolveThemeExtension<MyoroInputThemeExtension>()
                .labelTextStyle,
      ),
    );
  }
}

final class _ClearTextButton extends StatelessWidget {
  final VoidCallback _onPressed;

  const _ClearTextButton(this._onPressed);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroInputThemeExtension>();

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
