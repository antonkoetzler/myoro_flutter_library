import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_date_picker.dart';
part '_widget/_input.dart';
part '_widget/_trigger_area.dart';

/// Date picker input (click date, no typy typy).
class MyoroDatePickerInput extends MyoroStatefulWidget {
  const MyoroDatePickerInput({super.key, required this.configuration});

  /// Configuration.
  final MyoroDatePickerInputConfiguration configuration;

  @override
  State<MyoroDatePickerInput> createState() => _MyoroDatePickerInputState();
}

final class _MyoroDatePickerInputState extends State<MyoroDatePickerInput> {
  late final MyoroDatePickerInputViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = MyoroDatePickerInputViewModel(widget.configuration);
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    final state = _viewModel.state;
    final configuration = state.configuration;
    final checkboxOnChangedNotNull = configuration.checkboxOnChanged != null;
    final suffixNotNull = configuration.suffix != null;
    final checkboxOnChangedAndSuffixNotNull = checkboxOnChangedNotNull && suffixNotNull;
    final checkboxOnChangedAndSuffixNull = !checkboxOnChangedNotNull && !suffixNotNull;

    return InheritedProvider.value(
      value: _viewModel,
      child: Stack(
        alignment: checkboxOnChangedAndSuffixNotNull || checkboxOnChangedAndSuffixNull
            ? Alignment.center
            : (checkboxOnChangedNotNull ? Alignment.centerRight : Alignment.centerLeft),
        children: const [
          _Input(),
          Positioned(child: _TriggerArea()),
        ],
      ),
    );
  }
}
