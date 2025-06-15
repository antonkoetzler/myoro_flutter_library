part of '../myoro_checkbox_widget_showcase.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroCheckboxWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroCheckboxWidgetShowcaseViewModel>();

    return ListenableBuilder(
      listenable: viewModel,
      builder: (_, __) {
        return MyoroCheckbox(
          configuration: MyoroCheckboxConfiguration(
            label: viewModel.label,
            labelTextStyle: viewModel.labelTextStyle,
            onChanged: (value) => viewModel.onChanged(context, value),
          ),
        );
      },
    );
  }
}
