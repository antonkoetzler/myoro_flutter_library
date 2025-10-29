part of '../myoro_group_radio_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenScreenConfiguration.widget] of [MyoroGroupRadioWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroGroupRadioWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroGroupRadio(
      direction: state.direction,
      onChanged: state.onChangedEnabled ? (key, radios) => viewModel.onChanged(context, key, radios) : null,
      radios: viewModel.radios,
    );
  }
}
