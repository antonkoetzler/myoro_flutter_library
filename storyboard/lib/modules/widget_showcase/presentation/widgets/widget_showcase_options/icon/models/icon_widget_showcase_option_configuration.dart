import 'package:equatable/equatable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Configuration model of [IconWidgetShowcaseOption].
final class IconWidgetShowcaseOptionConfiguration extends Equatable {
  static const labelDefaultValue = 'Icon';

  const IconWidgetShowcaseOptionConfiguration({
    this.label = labelDefaultValue,
    this.checkboxOnChanged,
    required this.iconOnChanged,
    this.iconSizeOnChanged,
  });

  /// Label of the [IconWidgetShowcaseOption].
  final String label;

  /// On-changed of the [MyoroCheckbox] controlling if the [IconWidgetShowcaseOption] is enabled or not.
  final IconWidgetShowcaseOptionCheckboxOnChanged? checkboxOnChanged;

  /// On-changed callback when the set [IconData] is changed.
  final IconWidgetShowcaseOptionIconOnChanged iconOnChanged;

  /// On-changed callback when the set size of the [IconData] is changed.
  final IconWidgetShowcaseOptionIconSizeOnChanged? iconSizeOnChanged;

  IconWidgetShowcaseOptionConfiguration copyWith({
    String? label,
    IconWidgetShowcaseOptionCheckboxOnChanged? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
    IconWidgetShowcaseOptionIconOnChanged? iconOnChanged,
    MyoroSliderOnChanged? iconSizeOnChanged,
    bool iconSizeOnChangedProvided = true,
  }) {
    return IconWidgetShowcaseOptionConfiguration(
      label: label ?? this.label,
      checkboxOnChanged: checkboxOnChangedProvided ? (checkboxOnChanged ?? this.checkboxOnChanged) : null,
      iconOnChanged: iconOnChanged ?? this.iconOnChanged,
      iconSizeOnChanged: iconSizeOnChangedProvided ? (iconSizeOnChanged ?? this.iconSizeOnChanged) : null,
    );
  }

  @override
  List<Object?> get props {
    return [label, checkboxOnChanged, iconOnChanged, iconSizeOnChanged];
  }

  @override
  String toString() =>
      'IconWidgetShowcaseOptionConfiguration(\n'
      '  label: $label,\n'
      '  checkboxOnChanged: $checkboxOnChanged,\n'
      '  iconOnChanged: $iconOnChanged,\n'
      '  iconSizeOnChanged: $iconSizeOnChanged,\n'
      ');';
}
