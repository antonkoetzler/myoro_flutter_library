import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Base accordion configuration.
@immutable
abstract class MyoroAccordionConfiguration<T> {
  static const thumbVisibilityDefaultValue = false;

  const MyoroAccordionConfiguration({
    this.thumbVisibility = thumbVisibilityDefaultValue,
    required this.titleBuilder,
    required this.contentBuilder,
    this.items = const {},
  });

  /// [Scrollbar.thumbVisibility]
  final bool thumbVisibility;

  /// Title builder.
  final MyoroAccordionBuilder<T> titleBuilder;

  /// Content builder.
  final MyoroAccordionBuilder<T> contentBuilder;

  /// Items of the [MyoroAccordion].
  final Set<T> items;
}
