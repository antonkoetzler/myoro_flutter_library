part of '../myoro_menu_widget_showcase_screen.dart';

/// [MyoroMenuConfiguration.border] option of [MyoroMenuWidgetShowcaseScreen].
final class _BorderOption extends StatelessWidget {
  const _BorderOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenuWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Border enabled?',
        onChanged: (value) => viewModel.state.borderEnabled = value,
      ),
    );
  }
}
