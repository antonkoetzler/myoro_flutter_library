part of '../myoro_search_input_widget_showcase_screen.dart';

/// [MyoroSearchInputConfiguration.requestWhenChanged] option of [MyoroSearchInput].
final class _RequestWhenChangedOption extends StatelessWidget {
  const _RequestWhenChangedOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSearchInputWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Fire when text is changed?',
        onChanged: (value) => viewModel.state.requestWhenChanged = value,
      ),
    );
  }
}
