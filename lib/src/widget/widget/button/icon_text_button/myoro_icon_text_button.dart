import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widget/_button.dart';
part '_widget/_icon.dart';
part '_widget/_text.dart';

/// Button that holds an icon and/or text.
class MyoroIconTextButton extends MyoroStatelessWidget {
  /// Configuration of the [MyoroIconTextButton].
  final MyoroIconTextButtonConfiguration configuration;

  const MyoroIconTextButton({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    return MyoroButton(
      configuration: configuration,
      builder: (_, tapStatusEnum) => _Button(tapStatusEnum, configuration),
    );
  }
}
