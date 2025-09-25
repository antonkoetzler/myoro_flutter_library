import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_single_accordion_configuration.g.dart';

/// [MyoroSingleAccordion] configuration.
@myoroModel
class MyoroSingleAccordionConfiguration<T> extends MyoroAccordionConfiguration<T>
    with _$MyoroSingleAccordionConfigurationMixin<T> {
  const MyoroSingleAccordionConfiguration({
    super.thumbVisibility,
    required super.titleBuilder,
    required super.contentBuilder,
    required super.items,
    this.selectedItem,
  });

  // coverage:ignore-start
  factory MyoroSingleAccordionConfiguration.fake({required Set<T> items, T? selectedItem}) {
    return MyoroSingleAccordionConfiguration(
      thumbVisibility: faker.randomGenerator.boolean(),
      titleBuilder: (T item, _) => const SizedBox.shrink(),
      contentBuilder: (T item, _) => const SizedBox.shrink(),
      items: items,
      selectedItem: selectedItem,
    );
  }
  // coverage:ignore-end

  /// Selected item.
  final T? selectedItem;
}
