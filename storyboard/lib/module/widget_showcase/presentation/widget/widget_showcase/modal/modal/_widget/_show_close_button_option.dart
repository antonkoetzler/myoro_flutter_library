part of '../myoro_modal_widget_showcase.dart';

/// [MyoroModalConfiguration.showCloseButton] option of [MyoroModalWidgetShowcase].
final class _ShowCloseButtonOption extends StatelessWidget {
  const _ShowCloseButtonOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show close button?',
        onChanged: (value) => viewModel.state.showCloseButton = value,
      ),
    );
  }
}
