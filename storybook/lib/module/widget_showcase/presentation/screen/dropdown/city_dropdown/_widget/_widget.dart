part of '../myoro_city_dropdown_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroCityDropdownWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCityDropdownWidgetShowcaseScreenViewModel>();

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, _) {
        final state = viewModel.state;
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MyoroCountryDropdown(
              selectedCountry: state.selectedCountry,
              onChanged: (country) {
                state.selectedCountry = country;
              },
            ),
            const SizedBox(height: 16),
            if (state.selectedCountry != null)
              MyoroRegionDropdown(
                country: state.selectedCountry!,
                selectedRegion: state.selectedRegion,
                onChanged: (region) {
                  state.selectedRegion = region;
                },
              ),
            if (state.selectedCountry != null) const SizedBox(height: 16),
            if (state.selectedCountry != null && state.selectedRegion != null)
              MyoroCityDropdown(
                country: state.selectedCountry!,
                region: state.selectedRegion!,
                selectedCity: state.selectedCity,
                onChanged: (city) {
                  state.selectedCity = city;
                },
              ),
          ],
        );
      },
    );
  }
}
