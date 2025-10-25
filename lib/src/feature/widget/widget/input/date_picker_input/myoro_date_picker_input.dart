import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_date_picker.dart';
part '_widget/_input.dart';

/// Date picker input (click date, no typy typy).
class MyoroDatePickerInput extends StatelessWidget {
  const MyoroDatePickerInput({super.key, this.style = const MyoroInputStyle(), this.inputController});

  /// Style.
  final MyoroInputStyle style;

  /// [MyoroInput.inputController]
  final TextEditingController? inputController;

  @override
  Widget build(_) {
    return MultiProvider(
      providers: [
        InheritedProvider.value(value: style),
        InheritedProvider(
          create: (_) => MyoroDatePickerInputViewModel(inputController),
          dispose: (_, v) => v.dispose(),
        ),
      ],
      child: const _Input(),
    );
  }
}
