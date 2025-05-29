part of '../myoro_icon_text_button_widget_showcase.dart';

/// [MyoroIconTextButtonConfiguration.iconConfiguration] option of [MyoroIconTextButtonWidgetShowcase].
final class _IconOption extends StatelessWidget {
  const _IconOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroIconTextButtonWidgetShowcaseViewModel>();

    return IconWidgetShowcaseOption(
      configuration: IconWidgetShowcaseOptionConfiguration(
        checkboxOnChanged: (enabled, icon, iconSize) {
          viewModel.icon = enabled ? icon : null;
          viewModel.iconSize = enabled ? iconSize : null;
        },
        iconOnChanged: (icon) => viewModel.icon = icon,
        iconSizeOnChanged: (iconSize) => viewModel.iconSize = iconSize,
      ),
    );
  }
}
