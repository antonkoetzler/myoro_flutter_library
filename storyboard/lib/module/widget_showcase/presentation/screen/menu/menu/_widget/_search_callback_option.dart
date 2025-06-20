part of '../myoro_menu_widget_showcase_screen.dart';

/// [MyoroMenuConfiguration.searchCallback] option of [MyoroMenuWidgetShowcaseScreen].
final class _SearchCallbackOption extends StatelessWidget {
  const _SearchCallbackOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroMenuWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Searching enabled?',
        onChanged: (value) => viewModel.state.searchCallbackEnabled = value,
      ),
    );
  }
}
