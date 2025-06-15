part of '../myoro_radio_widget_showcase.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroRadioWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroRadioWidgetShowcaseViewModel>();
    return MyoroRadio(configuration: viewModel.configuration(context));
  }
}
