part of '../widget/myoro_country_region_city_dropdown.dart';

/// [State] of [MyoroCountryRegionCityDropdown].
final class _MyoroCountryRegionCityDropdownState extends State<MyoroCountryRegionCityDropdown> {
  /// View model.
  late final MyoroCountryRegionCityDropdownViewModel _viewModel;

  /// Init function.
  @override
  void initState() {
    super.initState();
    _viewModel = MyoroCountryRegionCityDropdownViewModel(
      widget.selectedCountry,
      widget.selectedRegion,
      widget.selectedCity,
      widget.onChanged,
    );
  }

  /// Did update function.
  @override
  void didUpdateWidget(MyoroCountryRegionCityDropdown oldWidget) {
    super.didUpdateWidget(oldWidget);
    _viewModel.state
      ..selectedCountry = widget.selectedCountry
      ..selectedRegion = widget.selectedRegion
      ..selectedCity = widget.selectedCity
      ..onChanged = widget.onChanged;
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
    final themeExtension = context.resolveThemeExtension<MyoroCountryRegionCityDropdownThemeExtension>();
    final spacing = themeExtension.spacing ?? widget.style.spacing ?? 0;

    final state = _viewModel.state;
    final selectedCountryController = state.selectedCountryController;
    final selectedRegionController = state.selectedRegionController;
    final selectedCity = state.selectedCity;
    final onCountryChanged = _viewModel.onCountryChanged;
    final onRegionChanged = _viewModel.onRegionChanged;
    final onCityChanged = _viewModel.onCityChanged;

    return MultiProvider(
      providers: [
        InheritedProvider.value(value: widget.style),
        InheritedProvider.value(value: _viewModel),
      ],
      child: ListenableBuilder(
        listenable: Listenable.merge([selectedCountryController, selectedRegionController]),
        builder: (_, _) {
          final selectedCountry = selectedCountryController.value;
          final selectedRegion = selectedRegionController.value;

          return Column(
            mainAxisSize: MainAxisSize.min,
            spacing: spacing,
            children: [
              MyoroCountryDropdown(selectedCountry: selectedCountry, onChanged: onCountryChanged),
              if (selectedCountry != null)
                AnimatedSize(
                  duration: kMyoroAnimationDuration,
                  curve: Curves.easeInOut,
                  clipBehavior: Clip.hardEdge,
                  child: MyoroRegionDropdown(
                    country: selectedCountry,
                    selectedRegion: selectedRegion,
                    onChanged: onRegionChanged,
                  ),
                ),
              if (selectedCountry != null && selectedRegion != null)
                AnimatedSize(
                  duration: kMyoroAnimationDuration,
                  curve: Curves.easeInOut,
                  clipBehavior: Clip.hardEdge,
                  child: MyoroCityDropdown(
                    country: selectedCountry,
                    region: selectedRegion,
                    selectedCity: selectedCity,
                    onChanged: onCityChanged,
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
