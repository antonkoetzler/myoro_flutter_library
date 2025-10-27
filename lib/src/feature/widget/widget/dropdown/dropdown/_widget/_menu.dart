part of '../bundle/myoro_dropdown_bundle.dart';

/// Menu widget.
final class _Menu<T> extends StatelessWidget {
  const _Menu();

  @override
  Widget build(context) {
    final menuStyle = context.watch<MyoroMenuStyle>();
    final viewModel = context.read<MyoroDropdownViewModel<T>>();
    final state = viewModel.state;
    final request = state.request;
    final itemBuilder = state.itemBuilder;
    return MyoroMenu(style: menuStyle, request: request, itemBuilder: itemBuilder, selectedItems: state.controller.selectedItems);
  }
}
