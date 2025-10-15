part of '../myoro_menus_widget_showcase_screen.dart';

/// [MyoroMenuConfiguration.constraints] option of [MyoroMenusWidgetShowcaseScreen].
final class _ConstraintsOption extends StatelessWidget {
  const _ConstraintsOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenusWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return BoxConstraintsWidgetShowcaseOption(onChanged: (constraints) => state.constraints = constraints);
  }
}
