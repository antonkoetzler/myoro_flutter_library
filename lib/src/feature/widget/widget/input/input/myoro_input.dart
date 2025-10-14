import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
part '_widget/_checkbox.dart';
part '_widget/_clear_text_button.dart';
part '_widget/_label.dart';
part '_widget/_suffix_button.dart';
part '_widget/_text_form_field.dart';
part '_widget/_obscure_text_button.dart';
part '_widget/_wrapper.dart';

/// Generic input _
///
/// [MyoroInput] also serves as a base input for creating other inputs in the commons folder.
/// A [MyoroInputConfiguration] is passed to every other input [Widget] in the commons folder.
/// This means that [MyoroInput] should always be completely compatible with the other inputs.
class MyoroInput extends StatefulWidget {
  const MyoroInput({
    super.key,
    this.configuration = const MyoroInputConfiguration(),
    this.formatter,
    this.style = const MyoroInputStyle(),
  });

  /// Configuration of the input.
  final MyoroInputConfiguration configuration;

  /// Formatters of the input.
  ///
  /// Stored here rather than in [configuration] to have named constructors that preload formatters.
  final MyoroInputFormatter? formatter;

  /// Style.
  final MyoroInputStyle style;

  /// An input that only accepts numbers (integers or decimal).
  factory MyoroInput.number({
    Key? key,
    bool createViewModel = false,
    double min = 0,
    double? max,
    int decimalPlaces = 0,
    MyoroInputConfiguration configuration = const MyoroInputConfiguration(),
    MyoroInputStyle? style,
  }) {
    return MyoroInput(
      key: key,
      configuration: configuration,
      formatter: MyoroNumberInputFormatter(min: min, max: max, decimalPlaces: decimalPlaces),
      style: style ?? const MyoroInputStyle(),
    );
  }

  @override
  State<MyoroInput> createState() => _MyoroInputState();
}

final class _MyoroInputState extends State<MyoroInput> {
  MyoroInputConfiguration get _configuration {
    return widget.configuration;
  }

  MyoroInputFormatter? get _formatter {
    return widget.formatter;
  }

  MyoroInputStyle get _style {
    return widget.style;
  }

  late final MyoroInputViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = MyoroInputViewModel(_configuration, _formatter);
  }

  @override
  void didUpdateWidget(covariant MyoroInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    _viewModel.state.configuration = _configuration;
    if (mounted && _style != oldWidget.style) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(_) {
    final state = _viewModel.state;
    final configurationController = state.configurationController;
    final enabledController = state.enabledController;

    return MultiProvider(
      providers: [
        Provider.value(value: _style),
        Provider.value(value: _viewModel),
      ],
      child: ValueListenableBuilder(
        valueListenable: configurationController,
        builder: (_, configuration, _) => ValueListenableBuilder(
          valueListenable: enabledController,
          builder: (_, enabled, _) => _Wrapper(configuration, enabled),
        ),
      ),
    );
  }
}
