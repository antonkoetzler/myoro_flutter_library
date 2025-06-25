part of '../myoro_button_widget_showcase_screen.dart';

/// [MyoroButtonConfiguration.onTapUp] option of [MyoroButtonWidgetShowcaseScreen].
final class _OnTapUpEnabledOption extends StatelessWidget {
  const _OnTapUpEnabledOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Tap up enabled?',
        value: viewModel.state.onTapUpEnabled,
        onChanged: (value) => viewModel.state.onTapUpEnabled = value,
      ),
    );
  }
}
