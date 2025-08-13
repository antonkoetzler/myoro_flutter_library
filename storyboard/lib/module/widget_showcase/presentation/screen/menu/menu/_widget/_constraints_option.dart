part of '../myoro_menu_widget_showcase_screen.dart';

/// [MyoroMenuConfiguration.constraints] option of [MyoroMenuWidgetShowcaseScreen].
final class _ConstraintsOption extends StatelessWidget {
  const _ConstraintsOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenuWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return BoxConstraintsWidgetShowcaseOption(onChanged: (constraints) => state.constraints = constraints);
  }
}
