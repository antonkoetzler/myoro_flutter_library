part of '../myoro_modal_widget_showcase.dart';

/// [MyoroModalConfiguration.onClosed] option of [MyoroModalWidgetShowcase].
final class _OnClosedOption extends StatelessWidget {
  const _OnClosedOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Run callback when modal is closed?',
        onChanged: (value) => viewModel.state.onClosedEnabled = value,
      ),
    );
  }
}
