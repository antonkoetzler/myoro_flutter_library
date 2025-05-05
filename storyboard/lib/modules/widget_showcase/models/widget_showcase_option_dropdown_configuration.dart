import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Configuration model for a dropdown [WidgetShowcaseOption].
final class WidgetShowcaseOptionDropdownConfiguration<T> extends Equatable {
  /// [MyoroSingularDropdownConfiguration.initiallySelectedItem]
  final T? initiallySelectedItem;

  /// [MyoroSingularDropdownConfiguration.allowItemClearing]
  final bool allowItemClearing;

  /// [MyoroSingularDropdownConfiguration.onChanged]
  final MyoroSingularDropdownConfigurationOnChanged<T> onChanged;

  const WidgetShowcaseOptionDropdownConfiguration({
    this.initiallySelectedItem,
    this.allowItemClearing = MyoroDropdownConfiguration.allowItemClearingDefaultValue,
    required this.onChanged,
  });

  WidgetShowcaseOptionDropdownConfiguration.fake()
    : initiallySelectedItem = null,
      allowItemClearing = faker.randomGenerator.boolean(),
      onChanged = ((_) {});

  WidgetShowcaseOptionDropdownConfiguration<T> copyWith({
    T? initiallySelectedItem,
    bool? allowItemClearing,
    MyoroSingularDropdownConfigurationOnChanged<T>? onChanged,
  }) {
    return WidgetShowcaseOptionDropdownConfiguration(
      initiallySelectedItem: initiallySelectedItem ?? this.initiallySelectedItem,
      allowItemClearing: allowItemClearing ?? this.allowItemClearing,
      onChanged: onChanged ?? this.onChanged,
    );
  }

  @override
  List<Object?> get props {
    return [initiallySelectedItem, allowItemClearing, onChanged];
  }

  @override
  String toString() =>
      'WidgetShowcaseOptionDropdownConfiguration(\n'
      '  initiallySelectedItem: $initiallySelectedItem,\n'
      '  allowItemClearing: $allowItemClearing,\n'
      '  onChanged: $onChanged,\n'
      ');';
}
