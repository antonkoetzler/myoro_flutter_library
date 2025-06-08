part of '../myoro_carousel_widget_showcase.dart';

/// [MyoroCarouselConfiguration.autoplayIntervalDuration] option of [MyoroCarouselWidgetShowcase].
final class _AutoplayIntervalDurationOption extends StatelessWidget {
  const _AutoplayIntervalDurationOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroCarouselWidgetShowcaseViewModel>();

    return MyoroInput.number(
      max: 10,
      configuration: MyoroInputConfiguration(
        placeholder: 'Duration in seconds',
        onChanged: (text) => viewModel.autoplayIntervalDuration = Duration(seconds: int.parse(text)),
      ),
    );
  }
}
