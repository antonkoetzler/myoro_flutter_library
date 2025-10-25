part of '../bundle/myoro_accordion_bundle.dart';

/// Base accordion [Widget].
final class _Base<T> extends StatelessWidget {
  const _Base(this._style, this._state);

  /// Style.
  final MyoroAccordionStyle _style;

  /// State.
  final MyoroAccordionState<T> _state;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        InheritedProvider(create: (_) => MyoroAccordionViewModel<T>(_state), dispose: (_, v) => v.dispose()),
        InheritedProvider.value(value: _style),
      ],
      child: Builder(
        builder: (context) {
          final viewModel = context.read<MyoroAccordionViewModel<T>>();
          final state = viewModel.state;

          return switch (state) {
            MyoroMultiAccordionState<T>() => ValueListenableBuilder(
              valueListenable: state.selectedItemsController,
              builder: (_, selectedItems, _) => _Accordion<T>(selectedItems),
            ),
            MyoroSingleAccordionState<T>() => ValueListenableBuilder(
              valueListenable: state.selectedItemController,
              builder: (_, selectedItem, _) => _Accordion<T>({?selectedItem}),
            ),
          };
        },
      ),
    );
  }
}
