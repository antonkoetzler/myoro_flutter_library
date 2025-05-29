import 'package:equatable/equatable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Configuration model of [PaddingWidgetShowcaseOption].
final class PaddingWidgetShowcaseOptionConfiguration extends Equatable {
  static const labelDefaultValue = 'Padding';

  const PaddingWidgetShowcaseOptionConfiguration({
    this.label = labelDefaultValue,
    this.checkboxOnChanged,
    required this.paddingOnChanged,
  });

  /// Label of the [PaddingWidgetShowcaseOption].
  final String label;

  /// [MyoroCheckbox] on changed.
  final PaddingWidgetShowcaseOptionTitleCheckboxOnChanged? checkboxOnChanged;

  /// [PaddingWidgetShowcaseOptionEnum.all] callback.
  final PaddingWidgetShowcaseOptionSelectionOnChanged paddingOnChanged;

  PaddingWidgetShowcaseOptionConfiguration copyWith({
    String? label,
    PaddingWidgetShowcaseOptionTitleCheckboxOnChanged? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
    PaddingWidgetShowcaseOptionSelectionOnChanged? paddingOnChanged,
  }) {
    return PaddingWidgetShowcaseOptionConfiguration(
      label: label ?? this.label,
      checkboxOnChanged: checkboxOnChangedProvided ? (checkboxOnChanged ?? this.checkboxOnChanged) : null,
      paddingOnChanged: paddingOnChanged ?? this.paddingOnChanged,
    );
  }

  @override
  List<Object?> get props {
    return [label, checkboxOnChanged, paddingOnChanged];
  }

  @override
  String toString() =>
      'PaddingWidgetShowcaseOptionConfiguration(\n'
      '  label: $label,\n'
      '  checkboxOnChanged: $checkboxOnChanged,\n'
      '  paddingOnChanged: $paddingOnChanged,\n'
      ');';
}
