part of '../myoro_menus_widget_showcase_screen.dart';

/// [MyoroMenuConfiguration.border] option of [MyoroMenusWidgetShowcaseScreen].
final class _BorderOption extends StatelessWidget {
  const _BorderOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenusWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Bordered?',
        onChanged: (borderEnabled) => state.borderEnabled = borderEnabled,
      ),
    );
  }
}
