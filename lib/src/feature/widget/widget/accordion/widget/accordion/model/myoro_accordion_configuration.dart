import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Base accordion configuration.
abstract class MyoroAccordionConfiguration {
  static const thumbVisibilityDefaultValue = false;

  const MyoroAccordionConfiguration({this.thumbVisibility = thumbVisibilityDefaultValue, required this.items})
    : assert(items.length > 0, '[MyoroAccordionConfiguration]: [items] cannot be empty.');

  /// [Scrollbar.thumbVisibility]
  final bool thumbVisibility;

  /// [MyoroAccordionItem]s of the [MyoroAccordion].
  final Set<MyoroAccordionItem> items;
}
