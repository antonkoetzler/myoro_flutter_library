part of '../myoro_radio_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroRadioWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroRadioWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroRadio(
      label: state.label,
      onChanged: state.onChangedEnabled ? (enabled) => viewModel.onChanged(context, enabled) : null,
    );
  }
}
