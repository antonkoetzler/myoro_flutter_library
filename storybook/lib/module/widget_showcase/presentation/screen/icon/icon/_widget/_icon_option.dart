part of '../myoro_icon_widget_showcase_screen.dart';

/// [MyoroIcon.icon] option of [MyoroIconWidgetShowcaseScreen].
final class _IconOption extends StatelessWidget {
  const _IconOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroIconWidgetShowcaseScreenViewModel>();

    return IconWidgetShowcaseOption(
      configuration: IconWidgetShowcaseOptionConfiguration(
        label: localization.storybookWidgetShowcaseOptionIconLabel,
        selectedIcon: viewModel.state.icon,
        iconOnChanged: (icon) => viewModel.state.icon = icon ?? Icons.star,
        selectedIconSize: viewModel.state.size,
        iconSizeOnChanged: (iconSize) => viewModel.state.size = iconSize,
        iconSizeCheckboxOnChanged: (enabled, iconSize) => viewModel.state.size = enabled ? iconSize : null,
      ),
    );
  }
}
