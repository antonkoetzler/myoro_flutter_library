import 'package:equatable/equatable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Configuration model of [PaddingWidgetShowcaseOption].
final class PaddingWidgetShowcaseOptionConfiguration extends Equatable {
  const PaddingWidgetShowcaseOptionConfiguration({required this.label, this.checkboxOnChanged});

  /// Label of the [PaddingWidgetShowcaseOption].
  final String label;

  /// [MyoroCheckbox] on changed.
  final MyoroCheckboxOnChanged? checkboxOnChanged;

  PaddingWidgetShowcaseOptionConfiguration copyWith({
    String? label,
    MyoroCheckboxOnChanged? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
  }) {
    return PaddingWidgetShowcaseOptionConfiguration(
      label: label ?? this.label,
      checkboxOnChanged: checkboxOnChangedProvided ? (checkboxOnChanged ?? this.checkboxOnChanged) : null,
    );
  }

  @override
  List<Object?> get props {
    return [label, checkboxOnChanged];
  }

  @override
  String toString() =>
      'PaddingWidgetShowcaseOptionConfiguration(\n'
      '  label: $label,\n'
      '  checkboxOnChanged: $checkboxOnChanged,\n'
      ');';
}
