part of '../myoro_button_widget_showcase_screen.dart';

/// [MyoroButtonConfiguration.isLoading] option of [MyoroButtonWidgetShowcaseScreen].
final class _IsLoadingOption extends StatelessWidget {
  const _IsLoadingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Is loading?',
        value: viewModel.state.isLoading,
        onChanged: (value) => viewModel.state.isLoading = value,
      ),
    );
  }
}
