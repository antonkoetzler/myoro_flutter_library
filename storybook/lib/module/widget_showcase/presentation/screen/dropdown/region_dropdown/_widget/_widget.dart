part of '../myoro_region_dropdown_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroRegionDropdownWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroRegionDropdownWidgetShowcaseScreenViewModel>();

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
          ],
        );
      },
    );
  }
}
