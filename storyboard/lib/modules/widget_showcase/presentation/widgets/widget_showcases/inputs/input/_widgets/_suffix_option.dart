part of '../myoro_input_widget_showcase.dart';

/// [MyoroInputConfiguration.suffix] option of [MyoroInputWidgetShowcase].
final class _SuffixOption extends StatelessWidget {
  const _SuffixOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Enable suffix?',
        onChanged: (value) => viewModel.state.suffixEnabled = value,
      ),
    );
  }
}
