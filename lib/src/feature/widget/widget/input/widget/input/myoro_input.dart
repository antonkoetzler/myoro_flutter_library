import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
part '_widget/_checkbox.dart';
part '_widget/_clear_text_button.dart';
part '_widget/_label.dart';
part '_widget/_text_form_field.dart';
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
    this.themeExtension,
  });

  /// Configuration of the input.
  final MyoroInputConfiguration configuration;

  /// Formatters of the input.
  ///
  /// Stored here rather than in [configuration] to have named constructors that preload formatters.
  final MyoroInputFormatter? formatter;

  /// Theme extension.
  final MyoroInputThemeExtension? themeExtension;

  /// An input that only accepts numbers (integers or decimal).
  factory MyoroInput.number({
    Key? key,
    bool createViewModel = false,
    double min = 0,
    double? max,
    int decimalPlaces = 0,
    MyoroInputConfiguration configuration = const MyoroInputConfiguration(),
    MyoroInputThemeExtension? themeExtension,
  }) {
    return MyoroInput(
      key: key,
      configuration: configuration,
      formatter: MyoroNumberInputFormatter(min: min, max: max, decimalPlaces: decimalPlaces),
      themeExtension: themeExtension,
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

  MyoroInputThemeExtension get _themeExtension {
    return widget.themeExtension ?? context.resolveThemeExtension<MyoroInputThemeExtension>();
  }

  MyoroInputViewModel? _localViewModel;
  MyoroInputViewModel get _viewModel {
    final viewModel = _localViewModel ??= (MyoroInputViewModel());
    return viewModel..initialize(_configuration, _formatter);
  }

  @override
  void didUpdateWidget(covariant MyoroInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    _viewModel.state.configuration = _configuration;
  }

  @override
  void dispose() {
    _localViewModel?.dispose();
    super.dispose();
  }

  @override
  Widget build(_) {
    return MyoroSingularThemeExtensionWrapper(
      themeExtension: _themeExtension,
      child: ValueListenableBuilder(
        valueListenable: _viewModel.state.enabledController,
        builder: (_, _, _) => _Wrapper(_viewModel),
      ),
    );
  }
}
