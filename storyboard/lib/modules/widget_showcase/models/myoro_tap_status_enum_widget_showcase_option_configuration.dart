import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ColorDropdownWidgetShowcaseOption] of the respective [MyoroTapStatusEnum].
typedef MyoroTapStatusEnumWidgetShowcaseOptionOnChanged = void Function(Color? color);

/// Configuration model of [MyoroTapStatusEnumWidgetShowcaseOption].
final class MyoroTapStatusEnumWidgetShowcaseOptionConfiguration extends Equatable {
  /// [WidgetShowcaseOption.labelConfiguration]
  final WidgetShowcaseOptionLabelConfiguration labelConfiguration;

  /// [MyoroTapStatusEnum.idle] callback.
  final MyoroTapStatusEnumWidgetShowcaseOptionOnChanged idleColorOnChanged;

  /// [MyoroTapStatusEnum.hover] callback.
  final MyoroTapStatusEnumWidgetShowcaseOptionOnChanged hoverColorOnChanged;

  /// [MyoroTapStatusEnum.tap] callback.
  final MyoroTapStatusEnumWidgetShowcaseOptionOnChanged tapColorOnChanged;

  const MyoroTapStatusEnumWidgetShowcaseOptionConfiguration({
    required this.labelConfiguration,
    required this.idleColorOnChanged,
    required this.hoverColorOnChanged,
    required this.tapColorOnChanged,
  });

  MyoroTapStatusEnumWidgetShowcaseOptionConfiguration.fake()
    : labelConfiguration = WidgetShowcaseOptionLabelConfiguration.fake(),
      idleColorOnChanged = ((_) {}),
      hoverColorOnChanged = ((_) {}),
      tapColorOnChanged = ((_) {});

  MyoroTapStatusEnumWidgetShowcaseOptionConfiguration copyWith({
    WidgetShowcaseOptionLabelConfiguration? labelConfiguration,
    MyoroTapStatusEnumWidgetShowcaseOptionOnChanged? idleColorOnChanged,
    MyoroTapStatusEnumWidgetShowcaseOptionOnChanged? hoverColorOnChanged,
    MyoroTapStatusEnumWidgetShowcaseOptionOnChanged? tapColorOnChanged,
  }) {
    return MyoroTapStatusEnumWidgetShowcaseOptionConfiguration(
      labelConfiguration: labelConfiguration ?? this.labelConfiguration,
      idleColorOnChanged: idleColorOnChanged ?? this.idleColorOnChanged,
      hoverColorOnChanged: hoverColorOnChanged ?? this.hoverColorOnChanged,
      tapColorOnChanged: tapColorOnChanged ?? this.tapColorOnChanged,
    );
  }

  @override
  List<Object?> get props {
    return [labelConfiguration, idleColorOnChanged, hoverColorOnChanged, tapColorOnChanged];
  }

  @override
  String toString() =>
      'MyoroTapStatusEnumWidgetShowcaseOptionConfiguration(\n'
      '  labelConfiguration: $labelConfiguration,\n'
      '  idleColorOnChanged: $idleColorOnChanged,\n'
      '  hoverColorOnChanged: $hoverColorOnChanged,\n'
      '  tapColorOnChanged: $tapColorOnChanged,\n'
      ');';
}
