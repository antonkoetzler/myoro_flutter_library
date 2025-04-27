import 'package:equatable/equatable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [MyoroCheckbox] callback of [_Label].
typedef MyoroTapStatusEnumWidgetShowcaseOptionEnabledConfigurationOnChanged =
    void Function(bool enabled);

/// [MyoroTapStatusEnumWidgetShowcaseOption] sub-configuration that turns [_Label]
/// into a [MyoroCheckbox]. This is useful for when the builder is nullable.
///
/// TODO: Needs to be tested.
final class MyoroTapStatusEnumWidgetShowcaseOptionEnabledConfiguration extends Equatable {
  /// [MyoroCheckbox.initialValue]
  final bool initialValue;

  /// [MyoroCheckbox.onChanged]
  final MyoroTapStatusEnumWidgetShowcaseOptionEnabledConfigurationOnChanged onChanged;

  const MyoroTapStatusEnumWidgetShowcaseOptionEnabledConfiguration({
    required this.initialValue,
    required this.onChanged,
  });

  MyoroTapStatusEnumWidgetShowcaseOptionEnabledConfiguration copyWith({
    bool? initialValue,
    MyoroTapStatusEnumWidgetShowcaseOptionEnabledConfigurationOnChanged? onChanged,
  }) {
    return MyoroTapStatusEnumWidgetShowcaseOptionEnabledConfiguration(
      initialValue: initialValue ?? this.initialValue,
      onChanged: onChanged ?? this.onChanged,
    );
  }

  @override
  List<Object?> get props {
    return [initialValue, onChanged];
  }

  @override
  String toString() =>
      'MyoroTapStatusEnumWidgetShowcaseOptionEnabledConfiguration(\n'
      '  initialValue: $initialValue,\n'
      '  onChanged: $onChanged,\n'
      ');';
}
