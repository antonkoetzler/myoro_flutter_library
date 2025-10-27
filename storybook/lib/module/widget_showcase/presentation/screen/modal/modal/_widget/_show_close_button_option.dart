part of '../myoro_modal_widget_showcase_screen.dart';

/// [MyoroModalConfiguration.showCloseButton] option of [MyoroModalWidgetShowcaseScreen].
final class _ShowCloseButtonOption extends StatelessWidget {
  const _ShowCloseButtonOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(label: 'Show close button?', onChanged: (value) => state.showCloseButton = value);
  }
}
