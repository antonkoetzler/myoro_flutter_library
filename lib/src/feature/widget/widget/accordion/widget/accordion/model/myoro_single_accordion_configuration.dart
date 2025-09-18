import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_single_accordion_configuration.g.dart';

/// [MyoroSingleAccordion] configuration.
@immutable
@myoroModel
class MyoroSingleAccordionConfiguration<T> extends MyoroAccordionConfiguration<T>
    with _$MyoroSingleAccordionConfigurationMixin {
  const MyoroSingleAccordionConfiguration({
    super.thumbVisibility,
    required super.titleBuilder,
    required super.contentBuilder,
    required super.items,
    this.selectedItem,
  });

  /// Selected item.
  final T? selectedItem;
}
