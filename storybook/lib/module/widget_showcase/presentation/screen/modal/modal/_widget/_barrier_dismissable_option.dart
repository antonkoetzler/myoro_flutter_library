part of '../myoro_modal_widget_showcase_screen.dart';

/// [MyoroModalConfiguration.barrierDismissable] option of [MyoroModalWidgetShowcaseScreen].
final class _BarrierDismissableOption extends StatelessWidget {
  const _BarrierDismissableOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(
      label: localization.storybookWidgetShowcaseOptionBarrierDismissableLabel,
      onChanged: (value) => state.barrierDismissable = value,
    );
  }
}
