part of '../myoro_dropdown_widget_showcase_screen.dart';

/// [MyoroDropdownConfiguration.showSearchBar] option of [MyoroDropdownWidgetShowcaseScreen].
final class _SearchCallbackOption extends StatelessWidget {
  const _SearchCallbackOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDropdownWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(localization.storybookDropdownSearchCallbackLabel, style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 8),
        Row(
          children: [
            Checkbox(value: state.showSearchBar, onChanged: (value) => state.showSearchBar = value ?? false),
            Text(localization.storybookDropdownEnableSearchCallbackCheckboxLabel),
          ],
        ),
        if (state.showSearchBar) Text(localization.storybookDropdownSearchCallbackEnabledMessage),
      ],
    );
  }
}
