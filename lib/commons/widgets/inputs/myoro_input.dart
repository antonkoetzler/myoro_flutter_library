import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

// TODO: Finish this input function with the suggestions

/// Input widget.
final class MyoroInput extends StatefulWidget {
  /// Configuration of the input.
  final MyoroInputConfiguration configuration;

  /// Formatters of the input.
  ///
  /// Stored here rather than in [configuration] to have named constructors that preload formatters.
  final List<TextInputFormatter>? formatters;

  /// Constructor for a generic input in which you may load any type of formatter or have no formatters.
  ///
  /// The named constructors of [MyoroInput] provide pre-inserted formatters.
  const MyoroInput({
    super.key,
    required this.configuration,
    this.formatters,
  });

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
    final controllerProvided = configuration.controller != null;
    final text = (min ?? 0).toStringAsFixed(decimalPlaces ?? 0);

    if (controllerProvided && configuration.controller!.text.isEmpty == true) {
      configuration.controller!.text = text;
    }

    return MyoroInput(
      key: key,
      configuration: configuration.copyWith(
        controller: controllerProvided ? null : TextEditingController(text: text),
      ),
      formatters: [
        MyoroNumberInputFormatter(
          min: min,
          max: max,
          decimalPlaces: decimalPlaces,
        ),
      ],
    );
  }

  @override
  State<MyoroInput> createState() => _MyoroInputState();
}

final class _MyoroInputState extends State<MyoroInput> {
  MyoroInputConfiguration get _configuration => widget.configuration;
  List<TextInputFormatter>? get _formatters => widget.formatters;

  TextEditingController? _localController;
  TextEditingController get _controller {
    return _configuration.controller ?? (_localController ??= TextEditingController());
  }

  /// [ValueNotifier] to keep track of whether the input
  /// is enabled or not if the checkbox is enabled.
  late final ValueNotifier<bool> _enabledNotifier;

  @override
  void initState() {
    super.initState();
    _enabledNotifier = ValueNotifier(_configuration.enabled ?? true);
  }

  @override
  void dispose() {
    if (_configuration.controller == null) _controller.dispose();
    _enabledNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final textStyle = _configuration.inputTextStyle ?? themeExtension.inputTextStyle;
    final border = _configuration.inputStyle.getBorder(context);

    return ValueListenableBuilder(
      valueListenable: _enabledNotifier,
      builder: (_, bool enabled, __) {
        return Row(
          children: [
            if (_configuration.checkboxOnChanged != null) ...[
              MyoroCheckbox(
                initialValue: enabled,
                onChanged: (bool value) {
                  _configuration.checkboxOnChanged!.call(value, _controller.text);
                  _enabledNotifier.value = value;
                },
              ),
              SizedBox(width: themeExtension.checkboxSpacing),
            ],
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (_configuration.label != null) ...[
                    Text(
                      _configuration.label!,
                      style: _configuration.labelTextStyle ?? themeExtension.labelTextStyle,
                    ),
                    SizedBox(height: themeExtension.labelSpacing),
                  ],
                  Flexible(
                    child: TextFormField(
                      enabled: enabled,
                      style: textStyle.withColor(
                        textStyle.color!.withOpacity(enabled ? 1 : 0.5),
                      ),
                      decoration: InputDecoration(
                        contentPadding: themeExtension.contentPadding,
                        enabledBorder: border,
                        focusedBorder: border,
                        disabledBorder: border.copyWith(
                          borderSide: border.borderSide.copyWith(
                            color: border.borderSide.color.withOpacity(0.5),
                          ),
                        ),
                        isDense: themeExtension.isDense,
                      ),
                      cursorHeight: themeExtension.cursorHeight,
                      validator: (_) => _configuration.validation?.call(_controller.text),
                      inputFormatters: _formatters,
                      onChanged: _configuration.onChanged,
                      controller: _controller,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
