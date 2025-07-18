import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_date_picker.dart';
part '_widget/_input.dart';
part '_widget/_trigger_area.dart';

/// Date picker input (click date, no typy typy).
class MyoroDatePickerInput extends MyoroStatefulWidget {
  const MyoroDatePickerInput({super.key, super.createViewModel, required this.configuration});

  /// Configuration.
  final MyoroDatePickerInputConfiguration configuration;

  @override
  State<MyoroDatePickerInput> createState() => _MyoroDatePickerInputState();
}

final class _MyoroDatePickerInputState extends State<MyoroDatePickerInput> {
  bool get _createViewModel => widget.createViewModel;

  MyoroDatePickerInputViewModel? _localViewModel;
  MyoroDatePickerInputViewModel get _viewModel {
    return _createViewModel
        ? MyoroDatePickerInputViewModel(widget.configuration)
        : context.read<MyoroDatePickerInputViewModel>();
  }

  @override
  void dispose() {
    _localViewModel?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = _viewModel.state;
    final configuration = state.configuration;
    final checkboxOnChangedNotNull = configuration.checkboxOnChanged != null;
    final suffixNotNull = configuration.suffix != null;
    final checkboxOnChangedAndSuffixNotNull = checkboxOnChangedNotNull && suffixNotNull;
    final checkboxOnChangedAndSuffixNull = !checkboxOnChangedNotNull && !suffixNotNull;

    final child = Stack(
      alignment:
          checkboxOnChangedAndSuffixNotNull || checkboxOnChangedAndSuffixNull
              ? Alignment.center
              : (checkboxOnChangedNotNull ? Alignment.centerRight : Alignment.centerLeft),
      children: const [_Input(), Positioned(child: _TriggerArea())],
    );
    return _createViewModel ? InheritedProvider.value(value: _viewModel, child: child) : child;
  }
}
