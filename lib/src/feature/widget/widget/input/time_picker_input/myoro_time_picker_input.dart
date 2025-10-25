import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_time_picker.dart';
part '_widget/_input.dart';

/// Time picker input (click time, no typy typy).
class MyoroTimePickerInput extends StatelessWidget {
  const MyoroTimePickerInput({super.key, this.style = const MyoroInputStyle(), required this.onChanged});

  /// Style.
  final MyoroInputStyle style;

  /// Callback executed when the time changed.
  final MyoroTimePickerInputOnChanged onChanged;

  @override
  Widget build(context) {
    return MultiProvider(
      providers: [
        InheritedProvider.value(value: style),
        Provider(create: (_) => MyoroTimePickerInputViewModel(onChanged), dispose: (_, v) => v.dispose()),
      ],
      child: const _Input(),
    );
  }
}
