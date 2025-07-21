part of '../myoro_app_bar_widget_showcase_screen.dart';

/// [MyoroAppBarConfiguration.bordered] option of [MyoroAppBarWidgetShowcaseScreen].
final class _BorderedOption extends StatelessWidget {
  const _BorderedOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAppBarWidgetShowcaseScreenViewModel>();
    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Bordered?',
        onChanged: (bool value) => viewModel.state.bordered = value,
      ),
    );
  }
}
