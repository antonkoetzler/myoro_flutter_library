part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputThemeExtension.clearTextButtonIcon] option of [MyoroInputWidgetShowcaseScreen].
final class _ClearTextButtonIconOption extends StatelessWidget {
  const _ClearTextButtonIconOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return IconWidgetShowcaseOption(
      configuration: IconWidgetShowcaseOptionConfiguration(
        label: 'Clear text button icon',
        selectedIcon: viewModel.state.clearTextButtonIcon,
        iconOnChanged: (icon) => viewModel.state.clearTextButtonIcon = icon,
      ),
    );
  }
}
