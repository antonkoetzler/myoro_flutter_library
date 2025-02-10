import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Date picker input (click date, not type).
final class MyoroDatePickerInput extends StatefulWidget {
  /// [MyoroInput] configuration.
  final MyoroInputConfiguration configuration;

  const MyoroDatePickerInput({super.key, required this.configuration});

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
  }) {
    return find.byWidgetPredicate(
      (Widget w) =>
          w is MyoroDatePickerInput &&
          (configurationEnabled ? w.configuration == configuration : true) &&
          (inputStyleEnabled ? w.configuration.inputStyle == inputStyle : true) &&
          (textAlignEnabled ? w.configuration.textAlign == textAlign : true) &&
          (inputTextStyleEnabled ? w.configuration.inputTextStyle == inputTextStyle : true) &&
          (labelEnabled ? w.configuration.label == label : true) &&
          (placeholderEnabled ? w.configuration.placeholder == placeholder : true) &&
          (labelTextStyleEnabled ? w.configuration.labelTextStyle == labelTextStyle : true) &&
          (suffixEnabled ? w.configuration.suffix == suffix : true) &&
          (enabledEnabled ? w.configuration.enabled == enabled : true) &&
          (readOnlyEnabled ? w.configuration.readOnly == readOnly : true) &&
          (showClearTextButtonEnabled ? w.configuration.showClearTextButton == showClearTextButton : true) &&
          (checkboxOnChangedEnabled ? w.configuration.checkboxOnChanged == checkboxOnChanged : true) &&
          (validationEnabled ? w.configuration.validation == validation : true) &&
          (onFieldSubmittedEnabled ? w.configuration.onFieldSubmitted == onFieldSubmitted : true) &&
          (onChangedEnabled ? w.configuration.onChanged == onChanged : true) &&
          (onClearedEnabled ? w.configuration.onCleared == onCleared : true) &&
          (focusNodeEnabled ? w.configuration.focusNode == focusNode : true) &&
          (controllerEnabled ? w.configuration.controller == controller : true),
    );
  }

  @override
  State<MyoroDatePickerInput> createState() => _MyoroDatePickerInputState();
}

final class _MyoroDatePickerInputState extends State<MyoroDatePickerInput> {
  TextEditingController? _localController;
  MyoroInputConfiguration get _configuration {
    return widget.configuration.copyWith(
      controller: widget.configuration.controller ?? (_localController ??= TextEditingController()),
    );
  }

  @override
  void dispose() {
    _localController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _Input(_configuration),
        Positioned(child: _TriggerArea(_configuration)),
      ],
    );
  }
}

final class _Input extends StatelessWidget {
  final MyoroInputConfiguration _configuration;

  const _Input(this._configuration);

  @override
  Widget build(BuildContext context) {
    return MyoroInput(
      configuration: _configuration,
    );
  }
}

final class _TriggerArea extends StatelessWidget {
  final MyoroInputConfiguration _configuration;

  const _TriggerArea(this._configuration);

  void _openDatePicker(BuildContext context) async {
    final DateTime? date = await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 500)),
      builder: (_, Widget? child) {
        return Theme(
          data: context.themeData.copyWith(
            colorScheme: context.themeData.colorScheme.copyWith(
              primary: MyoroColorTheme.secondary(context),
              onPrimary: MyoroColorTheme.primary(context),
            ),
          ),
          child: child!,
        );
      },
    );
    if (date == null) return;
    _configuration.controller!.text = DateFormat('dd/MM/yyyy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: _configuration.controller!,
      builder: (_, __) {
        return Padding(
          padding: EdgeInsets.only(
            right: _configuration.controller!.text.isNotEmpty && (_configuration.showClearTextButton ?? true) ? 40 : 0,
          ),
          child: InkWell(
            focusColor: MyoroColorTheme.transparent,
            hoverColor: MyoroColorTheme.transparent,
            splashColor: MyoroColorTheme.transparent,
            highlightColor: MyoroColorTheme.transparent,
            onTap: () => _openDatePicker(context),
            child: MyoroLayoutBuilder(
              builder: (_, BoxConstraints constraints) {
                return SizedBox(
                  height: 43.1, // Height of the input.
                  width: constraints.maxWidth - (_configuration.checkboxOnChanged != null ? 30 : 0),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
