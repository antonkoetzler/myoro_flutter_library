part of '../myoro_menu_widget_showcase.dart';

/// [MyoroMenuConfiguration.border] option of [MyoroMenuWidgetShowcase].
final class _BorderOption extends StatelessWidget {
  const _BorderOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroMenuWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Border enabled?',
        onChanged: (value) => viewModel.state.borderEnabled = value,
      ),
    );
  }
}
