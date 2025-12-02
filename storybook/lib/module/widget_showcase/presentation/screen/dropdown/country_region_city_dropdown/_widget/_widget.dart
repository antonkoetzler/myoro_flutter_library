part of '../myoro_country_region_city_dropdown_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroCountryRegionCityDropdownWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCountryRegionCityDropdownWidgetShowcaseScreenViewModel>();

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, _) {
        final state = viewModel.state;
        return MyoroCountryRegionCityDropdown(
          selectedCountry: state.selectedCountry,
          selectedRegion: state.selectedRegion,
          selectedCity: state.selectedCity,
          onChanged: (country, region, city) {
            state.selectedCountry = country;
            state.selectedRegion = region;
            state.selectedCity = city;
          },
        );
      },
    );
  }
}
