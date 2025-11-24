part of '../myoro_tag_widget_showcase_screen.dart';

/// [MyoroTag.icon] option of [MyoroTagWidgetShowcaseScreen].
final class _IconOption extends StatelessWidget {
  const _IconOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTagWidgetShowcaseScreenViewModel>();

    return IconWidgetShowcaseOption(
      configuration: IconWidgetShowcaseOptionConfiguration(
        selectedIcon: viewModel.state.icon,
        iconOnChanged: (icon) => viewModel.state.icon = icon,
        selectedIconSize: viewModel.state.iconSize,
        iconSizeOnChanged: (iconSize) => viewModel.state.iconSize = iconSize,
        iconSizeCheckboxOnChanged: (enabled, iconSize) => viewModel.state.iconSize = enabled ? iconSize : null,
      ),
    );
  }
}
