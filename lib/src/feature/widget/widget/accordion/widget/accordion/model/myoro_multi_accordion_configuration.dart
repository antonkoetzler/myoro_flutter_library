import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_multi_accordion_configuration.g.dart';

/// [MyoroMultiAccordion] configuration.
@immutable
@myoroModel
class MyoroMultiAccordionConfiguration<T> extends MyoroAccordionConfiguration<T>
    with _$MyoroMultiAccordionConfigurationMixin {
  const MyoroMultiAccordionConfiguration({
    super.thumbVisibility,
    required super.titleBuilder,
    required super.contentBuilder,
    required super.items,
    this.selectedItems = const {},
  });

  // coverage:ignore-start
  factory MyoroMultiAccordionConfiguration.fake({Set<T> items = const {}, Set<T> selectedItems = const {}}) {
    return MyoroMultiAccordionConfiguration(
      thumbVisibility: faker.randomGenerator.boolean(),
      titleBuilder: (_, _) => const SizedBox.shrink(),
      contentBuilder: (_, _) => const SizedBox.shrink(),
      items: items,
      selectedItems: selectedItems,
    );
  }
  // coverage:ignore-end

  MyoroMultiAccordionConfiguration<T> copyWith({
    bool? thumbVisibility,
    MyoroAccordionBuilder<T>? titleBuilder,
    MyoroAccordionBuilder<T>? contentBuilder,
    Set<T>? items,
    Set<T>? selectedItems,
  }) {
    return MyoroMultiAccordionConfiguration(
      thumbVisibility: thumbVisibility ?? this.thumbVisibility,
      titleBuilder: titleBuilder ?? this.titleBuilder,
      contentBuilder: contentBuilder ?? this.contentBuilder,
      items: items ?? this.items,
      selectedItems: selectedItems ?? this.selectedItems,
    );
  }

  /// Selected items.
  final Set<T> selectedItems;
}
