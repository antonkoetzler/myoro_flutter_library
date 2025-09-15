part of '../myoro_modal_widget_showcase_screen.dart';

/// [MyoroModalThemeExtension.primaryColor] option of [MyoroModalWidgetShowcaseScreen].
final class _PrimaryColorOption extends StatelessWidget {
  const _PrimaryColorOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseScreenViewModel>();

    return ColorWidgetShowcaseOption(
      label: 'Primary color',
      selectedColor: viewModel.state.primaryColor,
      onChanged: (color) => viewModel.state.primaryColor = color,
      checkboxOnChanged: (enabled, _) => viewModel.state.primaryColor = enabled ? null : viewModel.state.primaryColor,
    );
  }
}
