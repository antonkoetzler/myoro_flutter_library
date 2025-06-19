part of '../myoro_menu_widget_showcase.dart';

/// [MyoroMenuConfiguration.searchCallback] option of [MyoroMenuWidgetShowcase].
final class _SearchCallbackOption extends StatelessWidget {
  const _SearchCallbackOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroMenuWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Searching enabled?',
        onChanged: (value) => viewModel.state.searchCallbackEnabled = value,
      ),
    );
  }
}
