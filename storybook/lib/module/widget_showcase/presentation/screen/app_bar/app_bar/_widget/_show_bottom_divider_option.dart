part of '../myoro_app_bar_widget_showcase_screen.dart';

/// [MyoroAppBar.showBottomDivider] option of [MyoroAppBarWidgetShowcaseScreen].
final class _ShowBottomDividerOption extends StatelessWidget {
  const _ShowBottomDividerOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAppBarWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return MyoroCheckbox(label: 'Bordered?', onChanged: (bool value) => state.showBottomDivider = value);
  }
}
