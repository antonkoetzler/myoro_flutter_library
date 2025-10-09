part of '../myoro_scrollables_widget_showcase_screen.dart';

/// Option for configuring background color.
final class _BackgroundColorOption extends StatelessWidget {
  const _BackgroundColorOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final backgroundColor = state.backgroundColor;

    return ColorWidgetShowcaseOption(
      label: 'Background Color',
      selectedColor: backgroundColor,
      onChanged: (color) => state.backgroundColor = color,
    );
  }
}
