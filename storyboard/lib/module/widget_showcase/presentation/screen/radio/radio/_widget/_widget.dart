part of '../myoro_radio_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroRadioWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroRadioWidgetShowcaseScreenViewModel>();
    return MyoroRadio(configuration: viewModel.configuration(context));
  }
}
