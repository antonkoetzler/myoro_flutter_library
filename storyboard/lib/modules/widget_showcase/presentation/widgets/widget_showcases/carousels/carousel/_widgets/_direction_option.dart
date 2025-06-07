part of '../myoro_carousel_widget_showcase.dart';

/// [MyoroCarouselConfiguration.direction] option of [MyoroCarouselWidgetShowcase].
final class _DirectionOption extends StatelessWidget {
  const _DirectionOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroCarouselWidgetShowcaseViewModel>();

    return DirectionWidgetShowcaseOption();
  }
}
