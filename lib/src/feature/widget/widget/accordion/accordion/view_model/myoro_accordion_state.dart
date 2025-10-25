part of 'myoro_accordion_view_model.dart';

/// State of [MyoroAccordionViewModel].
sealed class MyoroAccordionState<T> {
  /// Default constructor.
  MyoroAccordionState(this.thumbVisibility, this.titleBuilder, this.contentBuilder, this.items);

  /// Thumb visibility.
  final bool thumbVisibility;

  /// Title builder.
  final MyoroAccordionBuilder<T> titleBuilder;

  /// Content builder.
  final MyoroAccordionBuilder<T> contentBuilder;

  /// Items.
  final Set<T> items;

  /// [ScrollController] of the [MyoroAccordion]'s [ListView].
  final _scrollController = ScrollController();

  /// [_scrollController] getter.
  ScrollController get scrollController {
    return _scrollController;
  }

  /// Dispose function
  @mustCallSuper
  void dispose() {
    _scrollController.dispose();
  }
}
