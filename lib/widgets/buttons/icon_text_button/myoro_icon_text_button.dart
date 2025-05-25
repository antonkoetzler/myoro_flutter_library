import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widgets/_button.dart';
part '_widgets/_icon.dart';
part '_widgets/_text.dart';

/// Button that holds an icon and/or text.
class MyoroIconTextButton extends StatelessWidget {
  /// Configuration of the [MyoroIconTextButton].
  final MyoroIconTextButtonConfiguration configuration;

  const MyoroIconTextButton({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    return MyoroButton(configuration: configuration.buttonConfiguration, builder: _builder);
  }

  Widget _builder(_, MyoroTapStatusEnum tapStatusEnum) {
    return _Button(tapStatusEnum, configuration);
  }
}
