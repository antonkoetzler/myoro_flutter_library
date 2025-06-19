part of '../myoro_icon_text_button_widget_showcase_screen.dart';

/// [MyoroIconTextButtonConfiguration.iconConfiguration] option of [MyoroIconTextButtonWidgetShowcaseScreen].
final class _IconOption extends StatelessWidget {
  const _IconOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroIconTextButtonWidgetShowcaseScreenViewModel>();

    return IconWidgetShowcaseOption(
      configuration: IconWidgetShowcaseOptionConfiguration(
        checkboxOnChanged: (enabled, icon, iconSize) {
          viewModel.state.icon = enabled ? icon : null;
          viewModel.state.iconSize = enabled ? iconSize : null;
        },
        iconOnChanged: (icon) => viewModel.state.icon = icon,
        iconSizeOnChanged: (iconSize) => viewModel.state.iconSize = iconSize,
      ),
    );
  }
}
