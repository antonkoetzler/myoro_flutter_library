part of '../myoro_carousel_widget_showcase.dart';

/// [MyoroCarouselConfiguration.autoplay] option of [MyoroCarouselWidgetShowcase].
final class _AutoplayEnabledOption extends StatelessWidget {
  const _AutoplayEnabledOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroCarouselWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Autoplay enabled?',
        onChanged: (value) => viewModel.autoplay = value,
      ),
    );
  }
}
