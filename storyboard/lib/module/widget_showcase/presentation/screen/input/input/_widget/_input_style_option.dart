part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputConfiguration.inputStyle] option of [MyoroInputWidgetShowcaseScreen].
final class _InputStyleOption extends StatelessWidget {
  const _InputStyleOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return MyoroInputStyleEnumWidgetShowcaseOption(
      initiallySelectedStyle: viewModel.state.inputStyle,
      onChanged: (item) => viewModel.state.inputStyle = item,
    );
  }
}
