part of '../myoro_modal_widget_showcase_screen.dart';

/// [MyoroModalConfiguration.useRootNavigator] option of [MyoroModalWidgetShowcaseScreen].
final class _UseRootNavigatorOption extends StatelessWidget {
  const _UseRootNavigatorOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Attach modal to specific point of widget tree?',
        onChanged: (value) => viewModel.state.useRootNavigator = value,
      ),
    );
  }
}
