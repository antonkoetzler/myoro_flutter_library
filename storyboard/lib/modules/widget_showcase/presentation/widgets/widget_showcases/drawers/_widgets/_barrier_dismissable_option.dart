part of '../myoro_drawer_widget_showcase.dart';

/// [MyoroDrawerConfiguration.barrierDismissable] option in [MyoroDrawerWidgetShowcase].
final class _BarrierDismissableOption extends StatelessWidget {
  const _BarrierDismissableOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDrawerWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Barrier dismissable?',
        onChanged: (value) => viewModel.barrierDismissable = value,
      ),
    );
  }
}
