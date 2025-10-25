part of '../bundle/myoro_accordion_bundle.dart';

/// Single accordion of MFL.
class MyoroSingleAccordion<T> extends StatelessWidget {
  /// Default [style] value.
  static const styleDefaultValue = MyoroAccordionStyle();

  /// Default [thumbVisibility] value.
  static const thumbVisibilityDefaultValue = false;

  /// Default constructor.
  const MyoroSingleAccordion({
    super.key,
    this.style = styleDefaultValue,
    this.thumbVisibility = thumbVisibilityDefaultValue,
    required this.titleBuilder,
    required this.contentBuilder,
    this.items = const {},
    this.selectedItem,
  });

  /// Style.
  final MyoroAccordionStyle style;

  /// [Scrollbar.thumbVisibility]
  final bool thumbVisibility;

  /// Title builder.
  final MyoroAccordionBuilder<T> titleBuilder;

  /// Content builder.
  final MyoroAccordionBuilder<T> contentBuilder;

  /// Items of the [MyoroAccordion].
  final Set<T> items;

  /// Selected items.
  final T? selectedItem;

  @override
  Widget build(context) {
    return _Base<T>(
      style,
      MyoroSingleAccordionState(thumbVisibility, titleBuilder, contentBuilder, items, selectedItem),
    );
  }
}
