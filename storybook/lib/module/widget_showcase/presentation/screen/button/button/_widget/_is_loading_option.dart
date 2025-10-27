part of '../myoro_button_widget_showcase_screen.dart';

/// [MyoroButtonConfiguration.isLoading] option of [MyoroButtonWidgetShowcaseScreen].
final class _IsLoadingOption extends StatelessWidget {
  const _IsLoadingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final isLoading = state.isLoading;
    return MyoroCheckbox(label: 'Is loading?', value: isLoading, onChanged: (value) => state.isLoading = value);
  }
}
