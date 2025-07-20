import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_checkbox.dart';
part '_widget/_clear_text_button.dart';
part '_widget/_label.dart';
part '_widget/_text_form_field.dart';
part '_widget/_wrapper.dart';

/// Generic input widget.
///
/// [MyoroInput] also serves as a base input for creating other inputs in the commons folder.
/// A [MyoroInputConfiguration] is passed to every other input [Widget] in the commons folder.
/// This means that [MyoroInput] should always be completely compatible with the other inputs.
class MyoroInput extends MyoroStatefulWidget {
  /// Configuration of the input.
  final MyoroInputConfiguration configuration;

  /// Formatters of the input.
  ///
  /// Stored here rather than in [configuration] to have named constructors that preload formatters.
  final MyoroInputFormatter? formatter;

  /// Constructor for a generic input in which you may load any type of formatter or have no formatters.
  ///
  /// The named constructors of [MyoroInput] provide pre-inserted formatters.
  const MyoroInput({
    super.key,
    super.createViewModel,
    this.configuration = const MyoroInputConfiguration(),
    this.formatter,
  });

  /// An input that only accepts numbers (integers or decimal).
  factory MyoroInput.number({
    Key? key,
    bool createViewModel = false,
    double min = 0,
    double? max,
    int decimalPlaces = 0,
    MyoroInputConfiguration configuration = const MyoroInputConfiguration(),
  }) {
    return MyoroInput(
      key: key,
      configuration: configuration,
      formatter: MyoroNumberInputFormatter(min: min, max: max, decimalPlaces: decimalPlaces),
    );
  }

  @override
  State<MyoroInput> createState() => _MyoroInputState();
}

final class _MyoroInputState extends State<MyoroInput> {
  bool get _createViewModel => widget.createViewModel;

  MyoroInputViewModel? _localViewModel;
  MyoroInputViewModel get _viewModel {
    final viewModel =
        _createViewModel ? (_localViewModel ??= (MyoroInputViewModel())) : context.read<MyoroInputViewModel>();
    return viewModel..initialize(widget.configuration, widget.formatter);
  }

  @override
  void didUpdateWidget(covariant MyoroInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    _viewModel.state.configuration = widget.configuration;
  }

  @override
  void dispose() {
    _localViewModel?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _viewModel.state.enabledController,
      builder: (_, _, _) => _Wrapper(_viewModel),
    );
  }
}
