part of '../myoro_icon_text_button_widget_showcase_screen.dart';

/// [MyoroIconTextButtonConfiguration.iconConfiguration] option of [MyoroIconTextButtonWidgetShowcaseScreen].
final class _IconOption extends StatelessWidget {
  const _IconOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroIconTextButtonWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final icon = state.icon;
    final iconSize = state.iconSize;

    return IconWidgetShowcaseOption(
      configuration: IconWidgetShowcaseOptionConfiguration(
        initiallySelectedIcon: icon,
        enabled: icon != null || iconSize != null,
        enableOptionCheckboxOnChanged: (enabled, icon, iconSize) {
          state.icon = enabled ? icon : null;
          state.iconSize = enabled ? iconSize : null;
        },
        iconOnChanged: (icon) => state.icon = icon,
        iconSizeOnChanged: (iconSize) => state.iconSize = iconSize,
      ),
    );
  }
}
