import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_accordion_configuration.g.dart';

/// Configuration model of [MyoroAccordion].
@immutable
@myoroModel
final class MyoroAccordionConfiguration with _$MyoroAccordionConfigurationMixin {
  static const thumbVisibilityDefaultValue = false;

  const MyoroAccordionConfiguration({
    this.thumbVisibility = thumbVisibilityDefaultValue,
    this.selectedItem,
    required this.items,
  }) : assert(items.length > 0, '[MyoroAccordionConfiguration]: [items] cannot be empty.');

  /// [Scrollbar.thumbVisibility]
  final bool thumbVisibility;

  /// Expanded item.
  final MyoroAccordionItem? selectedItem;

  /// [MyoroAccordionItem]s of the [MyoroAccordion].
  final Set<MyoroAccordionItem> items;
}
