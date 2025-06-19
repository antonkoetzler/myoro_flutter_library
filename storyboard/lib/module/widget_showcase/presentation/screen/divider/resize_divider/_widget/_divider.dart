part of '../myoro_resize_divider_widget_showcase_screen.dart';

/// The actual [MyoroResizeDivider] of [MyoroResizeDividerWidgetShowcaseScreen].
final class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroResizeDividerWidgetShowcaseScreenViewModel>();

    return ListenableBuilder(
      listenable: viewModel.state.basicDividerViewModel.state,
      builder: (_, __) {
        return MyoroResizeDivider(configuration: viewModel.configuration);
      },
    );
  }
}
