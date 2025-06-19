part of '../myoro_drawer_widget_showcase_screen.dart';

/// [MyoroDrawerConfiguration.barrierDismissable] option in [MyoroDrawerWidgetShowcaseScreen].
final class _BarrierDismissableOption extends StatelessWidget {
  const _BarrierDismissableOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDrawerWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Barrier dismissable?',
        onChanged: (value) => viewModel.barrierDismissable = value,
      ),
    );
  }
}
