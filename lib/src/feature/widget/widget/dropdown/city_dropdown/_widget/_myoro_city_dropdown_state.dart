part of '../widget/myoro_city_dropdown.dart';

/// [State] of [MyoroCityDropdown].
final class _MyoroCityDropdownState extends State<MyoroCityDropdown> {
  /// View model.
  late final MyoroCityDropdownViewModel _viewModel;

  /// Init function.
  @override
  void initState() {
    super.initState();
    _viewModel = MyoroCityDropdownViewModel(
      widget.label,
      widget.country,
      widget.region,
      widget.selectedCity,
      widget.onChanged,
    );
  }

  /// Did update function.
  @override
  void didUpdateWidget(MyoroCityDropdown oldWidget) {
    super.didUpdateWidget(oldWidget);
    _viewModel.state
      ..label = widget.label
      ..selectedCity = widget.selectedCity
      ..onChanged = widget.onChanged;
    if (oldWidget.country != widget.country || oldWidget.region != widget.region) {
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
    final myoroCityDropdownLabel = localization.myoroCityDropdownLabel;
    final myoroCityDropdownItemText = localization.myoroCityDropdownItemText;

    final state = _viewModel.state;
    final selectedCity = state.selectedCity;
    final onChanged = state.onChanged;
    final label = state.label.isNotEmpty ? state.label : myoroCityDropdownLabel;

    return InheritedProvider.value(
      value: _viewModel,
      child: ValueListenableBuilder(
        valueListenable: state.citiesRequestController,
        builder: (_, citiesRequest, _) {
          final cities = citiesRequest.data;

          return MyoroSingleSelectionDropdown<MyoroCity>(
            label: label,
            items: cities,
            selectedItem: selectedCity,
            itemBuilder: (_, item) {
              final text = myoroCityDropdownItemText(item.name);
              return MyoroMenuIconTextButtonItem(text: text);
            },
            selectedItemBuilder: (item) {
              return myoroCityDropdownItemText(item.name);
            },
            onChanged: onChanged,
          );
        },
      ),
    );
  }
}
