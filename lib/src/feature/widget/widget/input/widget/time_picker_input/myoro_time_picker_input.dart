import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_time_picker.dart';
part '_widget/_input.dart';
part '_widget/_trigger_area.dart';

/// Date picker input (click date, no typy typy).
class MyoroTimePickerInput extends MyoroStatefulWidget {
  const MyoroTimePickerInput({super.key, required this.configuration});

  /// Configuration.
  final MyoroTimePickerInputConfiguration configuration;

  @override
  State<MyoroTimePickerInput> createState() => _MyoroTimePickerInputState();
}

final class _MyoroTimePickerInputState extends State<MyoroTimePickerInput> {
  late final MyoroTimePickerInputViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = MyoroTimePickerInputViewModel(widget.configuration);
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
