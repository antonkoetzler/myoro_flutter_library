part of '../myoro_modal_widget_showcase_screen.dart';

/// [MyoroModalConfiguration.showCloseButton] option of [MyoroModalWidgetShowcaseScreen].
final class _ShowCloseButtonOption extends StatelessWidget {
  const _ShowCloseButtonOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show close button?',
        onChanged: (value) => viewModel.state.showCloseButton = value,
      ),
    );
  }
}
