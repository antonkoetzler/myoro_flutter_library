import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [_Label] configuration of [WidgetShowcaseOption].
///
/// If [initialValue] and [onChanged] is provided, [_Label]
/// will be a [MyoroCheckbox] instead of a [Text]. This is
/// used for a nullable [WidgetShowcaseOption].
final class WidgetShowcaseOptionLabelConfiguration extends Equatable {
  /// Text of [_Label].
  final String label;

  /// [MyoroCheckbox.initialValue]
  final bool? initialValue;

  /// [MyoroCheckbox.onChanged]
  final MyoroCheckboxOnChanged? onChanged;

  const WidgetShowcaseOptionLabelConfiguration({
    required this.label,
    this.initialValue,
    this.onChanged,
  }) : assert(
         !((initialValue != null) ^ (onChanged != null)),
         '[WidgetShowcaseOptionLabelConfiguration]: If [initialValue] is provided, [onChanged] must be provided.',
       );

  WidgetShowcaseOptionLabelConfiguration.fake()
    : label = faker.lorem.word(),
      initialValue =
          faker.randomGenerator.boolean()
              ? faker.randomGenerator.boolean()
              : null,
      onChanged = faker.randomGenerator.boolean() ? ((_) {}) : null;

  WidgetShowcaseOptionLabelConfiguration copyWith({
    String? label,
    bool? initialValue,
    bool initialValueProvided = true,
    MyoroCheckboxOnChanged? onChanged,
    bool onChangedProvided = true,
  }) {
    return WidgetShowcaseOptionLabelConfiguration(
      label: label ?? this.label,
      initialValue:
          initialValueProvided ? (initialValue ?? this.initialValue) : null,
      onChanged: onChangedProvided ? (onChanged ?? this.onChanged) : null,
    );
  }

  @override
  List<Object?> get props {
    return [label, initialValue, onChanged];
  }

  @override
  String toString() =>
      'WidgetShowcaseOptionLabelConfiguration(\n'
      '  label: $label,\n'
      '  initialValue: $initialValue,\n'
      '  onChanged: $onChanged,\n'
      ');';

  /// Returns if [initialValue] and [onChanged] are provided.
  bool get isNullable => (initialValue != null) && (onChanged != null);
}
