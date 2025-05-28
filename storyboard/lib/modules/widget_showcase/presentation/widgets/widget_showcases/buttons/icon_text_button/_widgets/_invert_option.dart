part of '../myoro_icon_text_button_widget_showcase.dart';

/// [MyoroIconTextButtonConfiguration.padding] option of [MyoroIconTextButtonWidgetShowcase].
final class _InvertOption extends StatelessWidget {
  const _InvertOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroIconTextButtonWidgetShowcaseViewModel>();
    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Icon and text inverted?',
        onChanged: (value) => viewModel.invert = value,
      ),
    );
  }
}
