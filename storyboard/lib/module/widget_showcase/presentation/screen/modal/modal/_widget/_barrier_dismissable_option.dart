part of '../myoro_modal_widget_showcase_screen.dart';

/// [MyoroModalConfiguration.barrierDismissable] option of [MyoroModalWidgetShowcaseScreen].
final class _BarrierDismissableOption extends StatelessWidget {
  const _BarrierDismissableOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Close modal when backdrop is tapped?',
        onChanged: (value) => viewModel.state.barrierDismissable = value,
      ),
    );
  }
}
