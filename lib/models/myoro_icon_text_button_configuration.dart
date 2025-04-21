import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [Color] builder of the icon and text.
typedef MyoroIconTextButtonConfigurationContentColorBuilder =
    Color Function(MyoroTapStatusEnum tapStatusEnum);

/// Configuration model of [MyoroIconTextButton].
///
/// TODO: Needs to be tested.
class MyoroIconTextButtonConfiguration extends Equatable {
  static const invertDefaultValue = false;
  static const spacingDefaultValue = 10.0;
  static const paddingDefaultValue = EdgeInsets.all(10);

  /// By default, the icon is displays on the left, and
  /// the text on the right, this is to invert the order.
  final bool invert;

  /// Spacing between the icon and text.
  final double spacing;

  /// Content padding.
  final EdgeInsets padding;

  /// [Color] builder of the icon and text.
  final MyoroIconTextButtonConfigurationContentColorBuilder?
  contentColorBuilder;

  /// Icon configuration of the [MyoroIconTextButton].
  final MyoroIconTextButtonIconConfiguration? iconConfiguration;

  /// Text configuration of the [MyoroIconTextButton].
  final MyoroIconTextButtonTextConfiguration? textConfiguration;

  /// Configuration of the base [MyoroButton].
  final MyoroButtonConfiguration? buttonConfiguration;

  const MyoroIconTextButtonConfiguration({
    this.invert = invertDefaultValue,
    this.spacing = spacingDefaultValue,
    this.padding = paddingDefaultValue,
    this.contentColorBuilder,
    this.iconConfiguration,
    this.textConfiguration,
    this.buttonConfiguration,
  }) : assert(
         !(iconConfiguration == null && textConfiguration == null),
         '[MyoroIconTextButtonConfiguration]: [iconConfiguration] '
         'and/or [textConfiguration] must be provided.',
       );

  MyoroIconTextButtonConfiguration copyWith({
    bool? invert,
    double? spacing,
    EdgeInsets? padding,
    MyoroIconTextButtonConfigurationContentColorBuilder? contentColorBuilder,
    bool contentColorBuilderProvided = true,
    MyoroIconTextButtonIconConfiguration? iconConfiguration,
    bool iconConfigurationProvided = true,
    MyoroIconTextButtonTextConfiguration? textConfiguration,
    bool textConfigurationProvided = true,
    MyoroButtonConfiguration? buttonConfiguration,
    bool buttonConfigurationProvided = true,
  }) {
    return MyoroIconTextButtonConfiguration(
      invert: invert ?? this.invert,
      spacing: spacing ?? this.spacing,
      padding: padding ?? this.padding,
      contentColorBuilder:
          contentColorBuilderProvided
              ? (contentColorBuilder ?? this.contentColorBuilder)
              : null,
      iconConfiguration:
          iconConfigurationProvided
              ? (iconConfiguration ?? this.iconConfiguration)
              : null,
      textConfiguration:
          textConfigurationProvided
              ? (textConfiguration ?? this.textConfiguration)
              : null,
      buttonConfiguration:
          buttonConfigurationProvided
              ? (buttonConfiguration ?? this.buttonConfiguration)
              : null,
    );
  }

  @override
  List<Object?> get props {
    return [
      invert,
      spacing,
      padding,
      contentColorBuilder,
      iconConfiguration,
      textConfiguration,
      buttonConfiguration,
    ];
  }

  @override
  String toString() =>
      'MyoroIconTextButtonConfiguration(\n'
      '  invert: $invert,\n'
      '  spacing: $spacing,\n'
      '  padding: $padding,\n'
      '  contentColorBuilder: $contentColorBuilder,\n'
      '  iconConfiguration: $iconConfiguration,\n'
      '  textConfiguration: $textConfiguration,\n'
      '  buttonConfiguration: $buttonConfiguration,\n'
      ');';
}
