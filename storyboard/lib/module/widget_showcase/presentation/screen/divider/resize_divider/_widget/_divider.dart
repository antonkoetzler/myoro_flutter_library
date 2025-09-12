part of '../myoro_resize_divider_widget_showcase_screen.dart';

/// The actual [MyoroResizeDivider] of [MyoroResizeDividerWidgetShowcaseScreen].
final class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroResizeDividerWidgetShowcaseScreenViewModel>();
    final dragCallback = viewModel.dragCallback;

    return ListenableBuilder(
      listenable: viewModel.state.basicDividerViewModel.state,
      builder: (_, __) {
        final state = viewModel.state;
        final basicDividerViewModel = state.basicDividerViewModel;
        final basicDividerViewModelState = basicDividerViewModel.state;
        final direction = basicDividerViewModelState.direction;
        return MyoroResizeDivider(direction, dragCallback: dragCallback);
      },
    );
  }
}
