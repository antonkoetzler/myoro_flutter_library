part of '../myoro_app_bar_widget_showcase.dart';

/// [MyoroAppBarConfiguration.bordered] option of [MyoroAppBarWidgetShowcase].
final class _BorderedOption extends StatelessWidget {
  const _BorderedOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroAppBarWidgetShowcaseViewModel>();
    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Bordered?',
        onChanged: (bool value) => viewModel.bordered = value,
      ),
    );
  }
}
