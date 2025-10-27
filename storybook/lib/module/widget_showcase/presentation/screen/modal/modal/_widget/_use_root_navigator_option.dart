part of '../myoro_modal_widget_showcase_screen.dart';

/// [MyoroModalConfiguration.useRootNavigator] option of [MyoroModalWidgetShowcaseScreen].
final class _UseRootNavigatorOption extends StatelessWidget {
  const _UseRootNavigatorOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(
      label: 'Attach modal to specific point of widget tree?',
      onChanged: (value) => state.useRootNavigator = value,
    );
  }
}
