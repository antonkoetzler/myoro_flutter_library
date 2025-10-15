part of '../myoro_modal_widget_showcase_screen.dart';

/// [MyoroModalThemeExtension.closeButtonIconConfiguration] option of [MyoroModalWidgetShowcaseScreen].
final class _CloseButtonIconConfigurationOption extends StatelessWidget {
  const _CloseButtonIconConfigurationOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseScreenViewModel>();

    return IconWidgetShowcaseOption(
      configuration: IconWidgetShowcaseOptionConfiguration(
        label: 'Close button icon',
        selectedIcon: viewModel.state.closeButtonIconConfiguration?.icon,
        iconOnChanged: (icon) {
          final currentConfig = viewModel.state.closeButtonIconConfiguration;
          viewModel.state.closeButtonIconConfiguration = MyoroIconConfiguration(
            icon: icon ?? Icons.close,
            size: currentConfig?.size,
          );
        },
        selectedIconSize: viewModel.state.closeButtonIconConfiguration?.size,
        iconSizeOnChanged: (size) {
          final currentConfig = viewModel.state.closeButtonIconConfiguration;
          viewModel.state.closeButtonIconConfiguration = MyoroIconConfiguration(
            icon: currentConfig?.icon ?? Icons.close,
            size: size,
          );
        },
        iconSizeCheckboxOnChanged: (enabled, size) {
          final currentConfig = viewModel.state.closeButtonIconConfiguration;
          viewModel.state.closeButtonIconConfiguration = MyoroIconConfiguration(
            icon: currentConfig?.icon ?? Icons.close,
            size: enabled ? size : null,
          );
        },
        enabled: viewModel.state.closeButtonIconConfiguration != null,
        enableOptionCheckboxOnChanged: (enabled, icon, size) {
          if (enabled) {
            viewModel.state.closeButtonIconConfiguration = MyoroIconConfiguration(
              icon: icon ?? Icons.close,
              size: size ?? 24.0,
            );
          } else {
            viewModel.state.closeButtonIconConfiguration = null;
          }
        },
      ),
    );
  }
}
