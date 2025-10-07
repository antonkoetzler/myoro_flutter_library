part of '../myoro_scrollables_widget_showcase_screen.dart';

/// Option for configuring background color.
final class _BackgroundColorOption extends StatelessWidget {
  const _BackgroundColorOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroScrollableWidgetShowcaseViewModel>();

    return ColorWidgetShowcaseOption(
      label: 'Background Color',
      selectedColor: viewModel.backgroundColor,
      onChanged: viewModel.setBackgroundColor,
    );
  }
}
