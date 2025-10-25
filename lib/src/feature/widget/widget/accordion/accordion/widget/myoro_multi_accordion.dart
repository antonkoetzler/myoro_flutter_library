part of '../bundle/myoro_accordion_bundle.dart';

/// Multi accordion of MFL.
class MyoroMultiAccordion<T> extends StatelessWidget {
  /// Default [style] value.
  static const styleDefaultValue = MyoroAccordionStyle();

  /// Default [thumbVisibility] value.
  static const thumbVisibilityDefaultValue = false;

  const MyoroMultiAccordion({
    super.key,
    this.style = styleDefaultValue,
    this.thumbVisibility = thumbVisibilityDefaultValue,
    required this.titleBuilder,
    required this.contentBuilder,
    this.items = const {},
    this.selectedItems = const {},
  });

  /// Style.
  final MyoroAccordionStyle style;

  /// [Scrollbar.thumbVisibility]
  final bool thumbVisibility;

  /// Title builder.
  final MyoroAccordionBuilder<T> titleBuilder;

  /// Content builder.
  final MyoroAccordionBuilder<T> contentBuilder;

  /// Items of an accordion.
  final Set<T> items;

  /// Selected items.
  final Set<T> selectedItems;

  @override
  Widget build(context) {
    return _Base<T>(
      style,
      MyoroMultiAccordionState(thumbVisibility, titleBuilder, contentBuilder, items, selectedItems),
    );
  }
}
