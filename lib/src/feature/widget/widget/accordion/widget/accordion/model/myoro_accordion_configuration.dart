import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_accordion_configuration.g.dart';

/// Configuration model of [MyoroAccordion].
@immutable
@myoroModel
final class MyoroAccordionConfiguration with _$MyoroAccordionConfigurationMixin {
  const MyoroAccordionConfiguration({this.selectedItem, required this.items})
    : assert(items.length > 0, '[MyoroAccordionConfiguration]: [items] cannot be empty.');

  /// Expanded item.
  final MyoroAccordionItem? selectedItem;

  /// [MyoroAccordionItem]s of the [MyoroAccordion].
  final Set<MyoroAccordionItem> items;
}
