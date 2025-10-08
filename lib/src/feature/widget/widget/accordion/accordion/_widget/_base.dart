part of '../bundle/myoro_accordion_bundle.dart';

/// Base accordion [Widget].
final class _Base<T> extends StatefulWidget {
  const _Base(this._style, this._controller, this._configuration, this._selectedItems)
    : assert(
        (_controller != null) ^ (_configuration != null),
        '[MyoroSingleAccordion]: [controller] (x)or [configuration] is required.',
      );

  /// Style.
  final MyoroAccordionStyle _style;

  /// Controller.
  final MyoroAccordionController<T>? _controller;

  /// Configuration.
  final MyoroAccordionConfiguration<T>? _configuration;

  /// Selected items.
  final Set<T> _selectedItems;

  @override
  State<_Base<T>> createState() => _BaseState<T>();
}

final class _BaseState<T> extends State<_Base<T>> {
  MyoroAccordionStyle get _style {
    return widget._style;
  }

  /// Controller.
  MyoroAccordionController<T>? get _controller {
    return widget._controller;
  }

  /// Configuration.
  MyoroAccordionConfiguration<T>? get _configuration {
    return widget._configuration;
  }

  /// Selected items.
  Set<T> get _selectedItems {
    return widget._selectedItems;
  }

  /// Local view model.
  MyoroAccordionViewModel<T>? _localViewModel;

  /// [_localViewModel] getter.
  MyoroAccordionViewModel<T> get _viewModel {
    // ignore: invalid_use_of_protected_member
    return _controller?.viewModel ?? (_localViewModel ??= MyoroAccordionViewModel(_configuration!, _selectedItems));
  }

  @override
  void didUpdateWidget(covariant _Base<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_configuration != null) _viewModel.state.configuration = _configuration!;
  }

  @override
  void dispose() {
    _localViewModel?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = _viewModel.state;
    final selectedItemsController = state.selectedItemsController;
    final scrollController = state.scrollController;
    final configuration = state.configuration;
    final items = configuration.items;
    final thumbVisibility = configuration.thumbVisibility;

    if (items.isEmpty) return const SizedBox.shrink();

    return MultiProvider(
      providers: [
        InheritedProvider.value(value: _viewModel),
        InheritedProvider.value(value: _style),
      ],
      child: ValueListenableBuilder(
        valueListenable: selectedItemsController,
        builder: (_, selectedItems, _) {
          return Scrollbar(
            controller: scrollController,
            thumbVisibility: thumbVisibility,
            child: ListView.builder(
              controller: scrollController,
              itemCount: items.length,
              itemBuilder: (_, index) {
                final item = items.elementAt(index);
                return _Item(
                  item: item,
                  isSelected: selectedItems.contains(item),
                  isLastItem: index == items.length - 1,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
