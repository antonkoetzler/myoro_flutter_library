part of '../myoro_icon_text_button_widget_showcase_screen.dart';

/// [MyoroIconTextButtonConfiguration.padding] option of [MyoroIconTextButtonWidgetShowcaseScreen].
final class _InvertOption extends StatelessWidget {
  const _InvertOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroIconTextButtonWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Icon and text inverted?',
        onChanged: (value) => viewModel.state.invert = value,
      ),
    );
  }
}
