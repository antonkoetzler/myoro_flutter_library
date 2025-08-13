part of '../myoro_modal_widget_showcase_screen.dart';

/// [MyoroModalConfiguration.constraints] option of [MyoroModalWidgetShowcaseScreen].
final class _ConstraintsOption extends StatelessWidget {
  const _ConstraintsOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return BoxConstraintsWidgetShowcaseOption(onChanged: (constraints) => state.constraints = constraints);
  }
}
