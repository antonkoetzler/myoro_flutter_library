part of '../myoro_carousel_widget_showcase_screen.dart';

/// [MyoroCarouselThemeExtension.previousItemButtonIcon] option of [MyoroCarouselWidgetShowcaseScreen].
final class _PreviousItemButtonIconOption extends StatelessWidget {
  const _PreviousItemButtonIconOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCarouselWidgetShowcaseScreenViewModel>();

    return IconWidgetShowcaseOption(
      configuration: IconWidgetShowcaseOptionConfiguration(
        label: localization.storybookWidgetShowcaseOptionPreviousItemButtonIconLabel,
        selectedIcon: viewModel.state.previousItemButtonIcon,
        iconOnChanged: (icon) => viewModel.state.previousItemButtonIcon = icon,
      ),
    );
  }
}
