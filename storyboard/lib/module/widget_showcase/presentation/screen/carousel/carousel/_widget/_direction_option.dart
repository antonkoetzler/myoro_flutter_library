part of '../myoro_carousel_widget_showcase_screen.dart';

/// [MyoroCarouselConfiguration.direction] option of [MyoroCarouselWidgetShowcaseScreen].
final class _DirectionOption extends StatelessWidget {
  const _DirectionOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCarouselWidgetShowcaseScreenViewModel>();

    return AxisWidgetShowcaseOption(
      initialDirection: viewModel.state.direction,
      onChanged: (direction) => viewModel.state.direction = direction!,
    );
  }
}
