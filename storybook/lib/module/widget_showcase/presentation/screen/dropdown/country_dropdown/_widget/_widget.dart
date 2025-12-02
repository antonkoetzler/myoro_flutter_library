part of '../myoro_country_dropdown_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroCountryDropdownWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCountryDropdownWidgetShowcaseScreenViewModel>();

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, _) {
        final state = viewModel.state;
        return MyoroCountryDropdown(
          selectedCountry: state.selectedCountry,
          onChanged: (country) {
            state.selectedCountry = country;
          },
        );
      },
    );
  }
}
