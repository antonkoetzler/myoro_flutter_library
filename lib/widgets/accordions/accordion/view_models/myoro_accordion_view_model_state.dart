part of 'myoro_accordion_view_model.dart';

/// State of [MyoroAccordion].
class MyoroAccordionViewModelState {
  /// [ScrollController] of the [MyoroAccordion]'s [ListView].
  final scrollController = ScrollController();

  /// Dispose function
  void dispose() {
    scrollController.dispose();
  }
}
