part of '../bundle/myoro_accordion_bundle.dart';

/// Base accordion [Widget].
final class _Base<T> extends StatefulWidget {
  const _Base(this._themeExtension, this._controller, this._configuration, this._selectedItems)
    : assert(
        (_controller != null) ^ (_configuration != null),
        '[MyoroSingleAccordion]: [controller] (x)or [configuration] is required.',
      );

  /// Style.
  final MyoroAccordionThemeExtension? _themeExtension;

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
  /// Style.
  MyoroAccordionThemeExtension? get _themeExtension {
    return widget._themeExtension;
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
    final isDarkMode = context.isDarkMode;
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;
    final themeExtension = _themeExtension ?? MyoroAccordionThemeExtension.builder(isDarkMode, colorScheme, textTheme);

    final state = _viewModel.state;
    final selectedItemsNotifier = state.selectedItemsNotifier;
    final scrollController = state.scrollController;
    final configuration = state.configuration;
    final items = configuration.items;
    final thumbVisibility = configuration.thumbVisibility;

    return InheritedProvider.value(
      value: _viewModel,
      child: MyoroSingleThemeExtensionWrapper(
        themeExtension: themeExtension,
        child: ValueListenableBuilder(
          valueListenable: selectedItemsNotifier,
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
      ),
    );
  }
}
