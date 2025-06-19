part of '../myoro_input_widget_showcase.dart';

/// [MyoroInputConfiguration.inputStyle] option of [MyoroInputWidgetShowcase].
final class _InputStyleOption extends StatelessWidget {
  const _InputStyleOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseViewModel>();

    return MyoroInputStyleEnumWidgetShowcaseOption(
      initiallySelectedStyle: viewModel.state.inputStyle,
      onChanged: (item) => viewModel.state.inputStyle = item,
    );
  }
}
