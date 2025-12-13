part of '../myoro_scrollables_widget_showcase_screen.dart';

/// [MyoroListScrollable.itemCount] option of [MyoroScrollablesWidgetShowcaseScreen].
final class _ItemCountOption extends StatelessWidget {
  const _ItemCountOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return MyoroInput(
      label: localization.storybookWidgetShowcaseOptionScrollableItemCountLabel,
      text: state.itemCount?.toString() ?? '',
      onChanged: (text) {
        if (text.isEmpty) {
          state.itemCount = null;
        } else {
          final count = int.tryParse(text);
          if (count != null && count >= 0) {
            state.itemCount = count;
          }
        }
      },
    );
  }
}
