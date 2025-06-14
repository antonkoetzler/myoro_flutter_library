part of '../myoro_group_radio_widget_showcase.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroGroupRadioWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroGroupRadioWidgetShowcaseViewModel>();
    return MyoroGroupRadio(configuration: viewModel.configuration(context));
  }
}
