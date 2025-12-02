part of '../myoro_menu_widget_showcase_screen.dart';

/// [MyoroMenuConfiguration.showSearchBar] option of [MyoroMenuWidgetShowcaseScreen].
final class _SearchCallbackOption extends StatelessWidget {
  const _SearchCallbackOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenuWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(localization.storybookMenuSearchCallbackLabel, style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 8),
        Row(
          children: [
            Checkbox(value: state.showSearchBar, onChanged: (value) => state.showSearchBar = value ?? false),
            Text(localization.storybookMenuEnableSearchCallbackCheckboxLabel),
          ],
        ),
        if (state.showSearchBar) Text(localization.storybookMenuSearchCallbackEnabledMessage),
      ],
    );
  }
}
