import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_button.dart';
part '_widget/_icon.dart';
part '_widget/_text.dart';

/// Button that holds an icon and/or text.
class MyoroIconTextButton extends StatelessWidget {
  const MyoroIconTextButton({super.key, required this.configuration, this.style = const MyoroIconTextButtonStyle()});

  /// Configuration.
  final MyoroIconTextButtonConfiguration configuration;

  /// Style.
  final MyoroIconTextButtonStyle style;

  @override
  Widget build(_) {
    return MultiProvider(
      providers: [
        InheritedProvider.value(value: configuration),
        InheritedProvider.value(value: style),
      ],
      child: MyoroButton(
        configuration: configuration,
        style: style,
        builder: (_, tapStatusEnum) => _Button(tapStatusEnum),
      ),
    );
  }
}
