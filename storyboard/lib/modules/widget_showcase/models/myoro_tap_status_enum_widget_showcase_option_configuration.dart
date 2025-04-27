import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ColorDropdownWidgetShowcaseOption] of the respective [MyoroTapStatusEnum].
typedef MyoroTapStatusEnumWidgetShowcaseOptionOnChanged = void Function(Color? color);

/// Configuration model of [MyoroTapStatusEnumWidgetShowcaseOption].
///
/// TODO: Needs to be tested.
final class MyoroTapStatusEnumWidgetShowcaseOptionConfiguration extends Equatable {
  /// Text of [_Label].
  final String label;

  /// Null enabled configuration.
  final MyoroTapStatusEnumWidgetShowcaseOptionEnabledConfiguration? enabledConfiguration;

  /// [MyoroTapStatusEnum.idle] callback.
  final MyoroTapStatusEnumWidgetShowcaseOptionOnChanged idleColorOnChanged;

  /// [MyoroTapStatusEnum.hover] callback.
  final MyoroTapStatusEnumWidgetShowcaseOptionOnChanged hoverColorOnChanged;

  /// [MyoroTapStatusEnum.tap] callback.
  final MyoroTapStatusEnumWidgetShowcaseOptionOnChanged tapColorOnChanged;

  const MyoroTapStatusEnumWidgetShowcaseOptionConfiguration({
    required this.label,
    this.enabledConfiguration,
    required this.idleColorOnChanged,
    required this.hoverColorOnChanged,
    required this.tapColorOnChanged,
  });

  MyoroTapStatusEnumWidgetShowcaseOptionConfiguration copyWith({
    String? label,
    MyoroTapStatusEnumWidgetShowcaseOptionEnabledConfiguration? enabledConfiguration,
    bool enabledConfigurationProvided = true,
    MyoroTapStatusEnumWidgetShowcaseOptionOnChanged? idleColorOnChanged,
    MyoroTapStatusEnumWidgetShowcaseOptionOnChanged? hoverColorOnChanged,
    MyoroTapStatusEnumWidgetShowcaseOptionOnChanged? tapColorOnChanged,
  }) {
    return MyoroTapStatusEnumWidgetShowcaseOptionConfiguration(
      label: label ?? this.label,
      enabledConfiguration:
          enabledConfigurationProvided ? (enabledConfiguration ?? this.enabledConfiguration) : null,
      idleColorOnChanged: idleColorOnChanged ?? this.idleColorOnChanged,
      hoverColorOnChanged: hoverColorOnChanged ?? this.hoverColorOnChanged,
      tapColorOnChanged: tapColorOnChanged ?? this.tapColorOnChanged,
    );
  }

  @override
  List<Object?> get props {
    return [
      label,
      enabledConfiguration,
      idleColorOnChanged,
      hoverColorOnChanged,
      tapColorOnChanged,
    ];
  }

  @override
  String toString() =>
      'MyoroTapStatusEnumWidgetShowcaseOptionConfiguration(\n'
      '  label: $label,\n'
      '  enabledConfiguration: $enabledConfiguration,\n'
      '  idleColorOnChanged: $idleColorOnChanged,\n'
      '  hoverColorOnChanged: $hoverColorOnChanged,\n'
      '  tapColorOnChanged: $tapColorOnChanged,\n'
      ');';
}
