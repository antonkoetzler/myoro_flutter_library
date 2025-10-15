part of '../myoro_card_widget_showcase_screen.dart';

/// [MyoroCardConfiguration.constraints] option of [MyoroCardWidgetShowcaseScreen].
final class _ConstraintsOption extends StatelessWidget {
  const _ConstraintsOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCardWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return BoxConstraintsWidgetShowcaseOption(onChanged: (constraints) => state.constraints = constraints);
  }
}
