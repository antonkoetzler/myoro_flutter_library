part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputThemeExtension.cursorHeight] option of [MyoroInputWidgetShowcaseScreen].
final class _CursorHeightOption extends StatelessWidget {
  const _CursorHeightOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Cursor height',
        initiallyEnabled: viewModel.state.cursorHeight != null,
        initialValue: viewModel.state.cursorHeight ?? 20.0,
        sliderOnChanged: (value) => viewModel.state.cursorHeight = value,
        checkboxOnChanged:
            (enabled, value) => viewModel.state.cursorHeight = enabled ? value : null,
      ),
    );
  }
}
