import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Date picker input (click date, not type).
final class MyoroDatePickerInput extends StatefulWidget {
  /// [MyoroInput] configuration.
  final MyoroInputConfiguration configuration;

  const MyoroDatePickerInput({super.key, required this.configuration});

  @override
  State<MyoroDatePickerInput> createState() => _MyoroDatePickerInputState();
}

final class _MyoroDatePickerInputState extends State<MyoroDatePickerInput> {
  TextEditingController? _localController;
  MyoroInputConfiguration get _configuration {
    return widget.configuration.copyWith(
      controller:
          widget.configuration.controller ??
          (_localController ??= TextEditingController()),
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
    return MyoroInput(configuration: _configuration);
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
              primary: MyoroColorDesignSystem.secondary(context),
              onPrimary: MyoroColorDesignSystem.primary(context),
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
            right:
                _configuration.controller!.text.isNotEmpty &&
                        (_configuration.showClearTextButton ?? true)
                    ? 40
                    : 0,
          ),
          child: InkWell(
            focusColor: MyoroColorDesignSystem.transparent,
            hoverColor: MyoroColorDesignSystem.transparent,
            splashColor: MyoroColorDesignSystem.transparent,
            highlightColor: MyoroColorDesignSystem.transparent,
            onTap: () => _openDatePicker(context),
            child: MyoroLayoutBuilder(
              builder: (_, BoxConstraints constraints) {
                return SizedBox(
                  height: 43.1, // Height of the input.
                  width:
                      constraints.maxWidth -
                      (_configuration.checkboxOnChanged != null ? 30 : 0),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
