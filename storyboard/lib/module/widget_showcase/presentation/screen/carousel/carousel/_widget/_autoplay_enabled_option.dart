part of '../myoro_carousel_widget_showcase_screen.dart';

/// [MyoroCarouselConfiguration.autoplay] option of [MyoroCarouselWidgetShowcaseScreen].
final class _AutoplayEnabledOption extends StatelessWidget {
  const _AutoplayEnabledOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroCarouselWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Autoplay enabled?',
        onChanged: (value) => viewModel.state.autoplay = value,
      ),
    );
  }
}
