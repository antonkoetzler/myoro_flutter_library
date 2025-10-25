import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_button.dart';
part '../_widget/_icon.dart';
part '../_widget/_text.dart';

/// Button that holds an icon and/or text.
class MyoroIconTextButton extends StatelessWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroIconTextButtonStyle();

  /// Default value of [isLoading].
  static const isLoadingDefaultValue = MyoroButton.isLoadingDefaultValue;

  /// Default value of [invert].
  static const invertDefaultValue = false;

  /// Default constructor.
  const MyoroIconTextButton({
    super.key,
    this.style = styleDefaultValue,
    this.cursor,
    this.tooltipConfiguration,
    this.onTapDown,
    this.onTapUp,
    this.isLoading = isLoadingDefaultValue,
    this.invert = invertDefaultValue,
    this.iconConfiguration,
    this.textConfiguration,
  }) : assert(
         !(iconConfiguration == null && textConfiguration == null),
         '[MyoroIconTextButtonConfiguration]: [iconConfiguration] '
         'and/or [textConfiguration] must be provided.',
       );

  /// Style.
  final MyoroIconTextButtonStyle style;

  /// [MyoroButton.cursor]
  final MouseCursor? cursor;

  /// [MyoroButton.tooltipConfiguration]
  final MyoroTooltipConfiguration? tooltipConfiguration;

  /// [MyoroButton.onTapDown]
  final MyoroButtonOnTapDown? onTapDown;

  /// [MyoroButton.onTapUp]
  final MyoroButtonOnTapUp? onTapUp;

  /// [MyoroButton.isLoading]
  final bool isLoading;

  /// Whether or not to invert the icon and text.
  ///
  /// Only effective when both [iconConfiguration] and [textConfiguration] is provided.
  final bool invert;

  /// Icon configuration of the [MyoroIconTextButton].
  final MyoroIconConfiguration? iconConfiguration;

  /// Text configuration of the [MyoroIconTextButton].
  final MyoroTextConfiguration? textConfiguration;

  @override
  Widget build(_) {
    return InheritedProvider.value(
      value: style,
      child: MyoroButton(
        style: style,
        cursor: cursor,
        tooltipConfiguration: tooltipConfiguration,
        onTapDown: onTapDown,
        onTapUp: onTapUp,
        isLoading: isLoading,
        builder: (_, tapStatusEnum) => _Button(tapStatusEnum, invert, iconConfiguration, textConfiguration),
      ),
    );
  }
}
