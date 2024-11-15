import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A date picker widget deriving from [MyoroInput].
final class MyoroDatePickerInput extends StatelessWidget {
  final MyoroInputConfiguration configuration;

  const MyoroDatePickerInput({
    super.key,
    required this.configuration,
  });

  @override
  Widget build(BuildContext context) {
    return MyoroInput(
      configuration: configuration,
    );
  }
}
