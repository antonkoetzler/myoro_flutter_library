part of '../myoro_menus_widget_showcase_screen.dart';

/// [MyoroMenuConfiguration.backgroundColorOption] of [MyoroMenusWidgetShowcaseScreen].
final class _BackgroundColorOption extends StatelessWidget {
  const _BackgroundColorOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenusWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return ColorWidgetShowcaseOption(onChanged: (backgroundColor) => state.backgroundColor = backgroundColor);
  }
}
