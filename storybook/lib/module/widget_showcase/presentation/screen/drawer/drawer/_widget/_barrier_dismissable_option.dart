part of '../myoro_drawer_widget_showcase_screen.dart';

/// [MyoroDrawerConfiguration.barrierDismissable] option in [MyoroDrawerWidgetShowcaseScreen].
final class _BarrierDismissableOption extends StatelessWidget {
  const _BarrierDismissableOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDrawerWidgetShowcaseScreenViewModel>();
    return MyoroCheckbox(label: 'Barrier dismissable?', onChanged: (value) => viewModel.barrierDismissable = value);
  }
}
