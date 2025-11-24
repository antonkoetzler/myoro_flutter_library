part of '../myoro_modal_widget_showcase_screen.dart';

/// [MyoroModalThemeExtension.closeButtonIconConfiguration] option of [MyoroModalWidgetShowcaseScreen].
final class _CloseButtonIconConfigurationOption extends StatelessWidget {
  const _CloseButtonIconConfigurationOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseScreenViewModel>();

    return IconWidgetShowcaseOption(
      configuration: IconWidgetShowcaseOptionConfiguration(
        label: localization.storybookWidgetShowcaseOptionCloseButtonIconLabel,
        selectedIcon: viewModel.state.closeButtonIcon,
        iconOnChanged: (icon) {
          viewModel.state.closeButtonIcon = icon ?? Icons.close;
        },
        selectedIconSize: viewModel.state.closeButtonIconSize,
        iconSizeOnChanged: (size) {
          viewModel.state.closeButtonIconSize = size;
        },
        iconSizeCheckboxOnChanged: (enabled, size) {
          viewModel.state.closeButtonIconSize = enabled ? size : null;
        },
        enabled: viewModel.state.closeButtonIcon != null,
        enableOptionCheckboxOnChanged: (enabled, icon, size) {
          if (enabled) {
            viewModel.state.closeButtonIcon = icon ?? Icons.close;
            viewModel.state.closeButtonIconSize = size ?? 24.0;
          } else {
            viewModel.state.closeButtonIcon = null;
            viewModel.state.closeButtonIconSize = null;
          }
        },
      ),
    );
  }
}
