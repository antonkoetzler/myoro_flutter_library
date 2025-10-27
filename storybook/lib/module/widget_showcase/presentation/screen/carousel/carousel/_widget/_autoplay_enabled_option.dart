part of '../myoro_carousel_widget_showcase_screen.dart';

/// [MyoroCarouselConfiguration.autoplay] option of [MyoroCarouselWidgetShowcaseScreen].
final class _AutoplayEnabledOption extends StatelessWidget {
  const _AutoplayEnabledOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCarouselWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final autoplayEnabled = state.autoplay;
    return MyoroCheckbox(
      label: 'Autoplay enabled?',
      value: autoplayEnabled,
      onChanged: (value) => state.autoplay = value,
    );
  }
}
