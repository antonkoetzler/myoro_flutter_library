part of '../myoro_modal_widget_showcase.dart';

/// [MyoroModalConfiguration.useRootNavigator] option of [MyoroModalWidgetShowcase].
final class _UseRootNavigatorOption extends StatelessWidget {
  const _UseRootNavigatorOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Attach modal to specific point of widget tree?',
        onChanged: (value) => viewModel.state.useRootNavigator = value,
      ),
    );
  }
}
