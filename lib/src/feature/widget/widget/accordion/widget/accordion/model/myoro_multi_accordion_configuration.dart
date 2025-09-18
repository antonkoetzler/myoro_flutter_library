import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_multi_accordion_configuration.g.dart';

/// [MyoroMultiAccordion] configuration.
@immutable
@myoroModel
class MyoroMultiAccordionConfiguration extends MyoroAccordionConfiguration
    with _$MyoroMultiAccordionConfigurationMixin {
  const MyoroMultiAccordionConfiguration({super.thumbVisibility, required super.items, this.selectedItems = const {}});

  /// Selected items.
  final Set<MyoroAccordionItem> selectedItems;
}
