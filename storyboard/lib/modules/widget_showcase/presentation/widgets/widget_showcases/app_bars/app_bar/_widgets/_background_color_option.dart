part of '../myoro_app_bar_widget_showcase.dart';

/// [MyoroAppBarConfiguration.backgroundColor] option.
final class _BackgroundColorOption extends StatelessWidget {
  const _BackgroundColorOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroAppBarWidgetShowcaseViewModel>();
    return ColorDropdownWidgetShowcaseOption(onChanged: (color) => viewModel.backgroundColor = color);
  }
}
