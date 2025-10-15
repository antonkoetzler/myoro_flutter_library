part of '../myoro_carousel_widget_showcase_screen.dart';

/// [MyoroCarouselThemeExtension.nextItemButtonIcon] option of [MyoroCarouselWidgetShowcaseScreen].
final class _NextItemButtonIconOption extends StatelessWidget {
  const _NextItemButtonIconOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCarouselWidgetShowcaseScreenViewModel>();

    return IconWidgetShowcaseOption(
      configuration: IconWidgetShowcaseOptionConfiguration(
        label: 'Next item button icon',
        selectedIcon: viewModel.state.nextItemButtonIcon,
        iconOnChanged: (icon) => viewModel.state.nextItemButtonIcon = icon,
      ),
    );
  }
}
