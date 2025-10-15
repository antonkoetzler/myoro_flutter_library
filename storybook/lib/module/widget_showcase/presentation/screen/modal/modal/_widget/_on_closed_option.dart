part of '../myoro_modal_widget_showcase_screen.dart';

/// [MyoroModalConfiguration.onClosed] option of [MyoroModalWidgetShowcaseScreen].
final class _OnClosedOption extends StatelessWidget {
  const _OnClosedOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Run callback when modal is closed?',
        onChanged: (value) => viewModel.state.onClosedEnabled = value,
      ),
    );
  }
}
