part of '../myoro_modal_widget_showcase_screen.dart';

/// [MyoroModalConfiguration.isBottomSheet] option of [MyoroModalWidgetShowcaseScreen].
final class _IsBottomSheetOption extends StatelessWidget {
  const _IsBottomSheetOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(label: 'Is bottom sheet?', onChanged: (isBottomSheet) => state.isBottomSheet = isBottomSheet);
  }
}
