import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_date_picker.dart';
part '_widget/_input.dart';
part '_widget/_trigger_area.dart';

/// Date picker input (click date, no typy typy).
class MyoroDatePickerInput extends StatefulWidget {
  const MyoroDatePickerInput({super.key, required this.configuration, this.themeExtension});

  /// Configuration.
  final MyoroDatePickerInputConfiguration configuration;

  /// Theme extension.
  final MyoroInputThemeExtension? themeExtension;

  @override
  State<MyoroDatePickerInput> createState() => _MyoroDatePickerInputState();
}

final class _MyoroDatePickerInputState extends State<MyoroDatePickerInput> {
  MyoroDatePickerInputConfiguration get _configuration => widget.configuration;
  MyoroInputThemeExtension get _themeExtension {
    return widget.themeExtension ??
        Theme.of(context.read<BuildContext>()).extension<MyoroInputThemeExtension>()!;
  }

  late final MyoroDatePickerInputViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = MyoroDatePickerInputViewModel(_configuration);
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(_) {
    final state = _viewModel.state;
    final configuration = state.configuration;
    final checkboxOnChangedNotNull = configuration.checkboxOnChanged != null;
    final suffixNotNull = configuration.suffix != null;
    final checkboxOnChangedAndSuffixNotNull = checkboxOnChangedNotNull && suffixNotNull;
    final checkboxOnChangedAndSuffixNull = !checkboxOnChangedNotNull && !suffixNotNull;

    return MyoroSingularThemeExtensionWrapper(
      themeExtension: _themeExtension,
      child: InheritedProvider.value(
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
      ),
    );
  }
}
