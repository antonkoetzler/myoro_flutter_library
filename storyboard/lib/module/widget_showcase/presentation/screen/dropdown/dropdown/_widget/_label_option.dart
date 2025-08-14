part of '../myoro_dropdowns_widget_showcase_screen.dart';

/// [MyoroDropdownConfiguration.label] option of [MyoroDropdownsWidgetShowcaseScreen].
final class _LabelOption extends StatelessWidget {
  const _LabelOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDropdownsWidgetShowcaseScreenViewModel>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(label: 'Label', onChanged: (text) => viewModel.state.label = text),
    );
  }
}
