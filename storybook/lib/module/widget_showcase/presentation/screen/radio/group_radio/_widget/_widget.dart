part of '../myoro_group_radio_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenScreenConfiguration.widget] of [MyoroGroupRadioWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroGroupRadioWidgetShowcaseScreenViewModel>();
    return MyoroGroupRadio(configuration: viewModel.buildConfiguration(context));
  }
}
