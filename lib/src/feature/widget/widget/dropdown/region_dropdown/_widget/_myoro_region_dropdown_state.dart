part of '../widget/myoro_region_dropdown.dart';

/// [State] of [MyoroRegionDropdown].
final class _MyoroRegionDropdownState extends State<MyoroRegionDropdown> {
  /// View model.
  late final MyoroRegionDropdownViewModel _viewModel;

  /// Init function.
  @override
  void initState() {
    super.initState();
    _viewModel = MyoroRegionDropdownViewModel(widget.label, widget.country, widget.selectedRegion, widget.onChanged);
  }

  /// Did update function.
  @override
  void didUpdateWidget(MyoroRegionDropdown oldWidget) {
    super.didUpdateWidget(oldWidget);
    _viewModel.state
      ..label = widget.label
      ..country = widget.country
      ..selectedRegion = widget.selectedRegion
      ..onChanged = widget.onChanged;
    if (oldWidget.country != widget.country) {
      _viewModel.fetch();
    }
  }

  /// Dispose function.
  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  /// Build function.
  @override
  Widget build(context) {
    final localization = context.mflLocalization;
    final myoroRegionDropdownLabel = localization.myoroRegionDropdownLabel;
    final myoroRegionDropdownItemText = localization.myoroRegionDropdownItemText;

    final state = _viewModel.state;
    final selectedRegion = state.selectedRegion;
    final onChanged = state.onChanged;
    final label = state.label.isNotEmpty ? state.label : myoroRegionDropdownLabel;

    return InheritedProvider.value(
      value: _viewModel,
      child: ValueListenableBuilder(
        valueListenable: state.regionsRequestController,
        builder: (_, regionsRequest, _) {
          final regions = regionsRequest.data;

          return MyoroSingleSelectionDropdown<MyoroRegion>(
            label: label,
            items: regions,
            selectedItem: selectedRegion,
            itemBuilder: (_, item) {
              final text = myoroRegionDropdownItemText(item.name);
              return MyoroMenuIconTextButtonItem(text: text);
            },
            selectedItemBuilder: (item) {
              return myoroRegionDropdownItemText(item.name);
            },
            onChanged: onChanged,
          );
        },
      ),
    );
  }
}
