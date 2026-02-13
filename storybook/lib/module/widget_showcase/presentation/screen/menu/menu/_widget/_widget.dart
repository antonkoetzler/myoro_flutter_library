part of '../myoro_menu_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroMenuWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenuWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return Container(
      height: 300,
      width: 200,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: MyoroMenu<String>(
        style: state.menuStyle,
        showSearchBar: state.showSearchBar,
        items: state.items,
        selectedItems: state.selectedItems,
        itemBuilder: state.itemBuilder,
      ),
    );
  }
}
