part of '../myoro_accordions_widget_showcase_screen.dart';

/// [MyoroAccordionThemeExtension.itemTitleButtonArrowIcon] option of [MyoroAccordionWidgetShowcaseScreen].
final class _ItemTitleButtonArrowIconOption extends StatelessWidget {
  const _ItemTitleButtonArrowIconOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAccordionsWidgetShowcaseScreenViewModel>();

    return IconWidgetShowcaseOption(
      configuration: IconWidgetShowcaseOptionConfiguration(
        label: 'Arrow icon',
        selectedIcon: viewModel.state.itemTitleButtonArrowIcon,
        selectedIconSize: viewModel.state.itemTitleButtonArrowIconSize,
        iconOnChanged: (icon) => viewModel.state.itemTitleButtonArrowIcon = icon,
        iconSizeOnChanged: (size) => viewModel.state.itemTitleButtonArrowIconSize = size,
      ),
    );
  }
}
