part of '../myoro_icon_text_button_widget_showcase_screen.dart';

/// [MyoroIconTextButtonConfiguration.padding] option of [MyoroIconTextButtonWidgetShowcaseScreen].
final class _InvertOption extends StatelessWidget {
  const _InvertOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroIconTextButtonWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final invert = state.invert;

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Icon and text inverted?',
        value: invert,
        onChanged: (value) => state.invert = value,
      ),
    );
  }
}
