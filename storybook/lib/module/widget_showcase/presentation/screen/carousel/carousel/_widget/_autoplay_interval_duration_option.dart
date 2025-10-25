part of '../myoro_carousel_widget_showcase_screen.dart';

/// [MyoroCarouselConfiguration.autoplayIntervalDuration] option of [MyoroCarouselWidgetShowcaseScreen].
final class _AutoplayIntervalDurationOption extends StatelessWidget {
  const _AutoplayIntervalDurationOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCarouselWidgetShowcaseScreenViewModel>();

    return MyoroNumberInput(
      max: 10,
      placeholder: 'Duration in seconds',
      onChanged: (text) => viewModel.state.autoplayIntervalDuration = Duration(seconds: int.parse(text)),
    );
  }
}
