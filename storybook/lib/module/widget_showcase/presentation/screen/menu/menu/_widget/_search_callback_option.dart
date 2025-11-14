part of '../myoro_menu_widget_showcase_screen.dart';

/// [MyoroMenuConfiguration.searchCallback] option of [MyoroMenuWidgetShowcaseScreen].
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
            Checkbox(
              value: state.searchCallbackEnabled,
              onChanged: (value) => state.searchCallbackEnabled = value ?? false,
            ),
            Text(localization.storybookMenuEnableSearchCallbackCheckboxLabel),
          ],
        ),
        if (state.searchCallbackEnabled) Text(localization.storybookMenuSearchCallbackEnabledMessage),
      ],
    );
  }
}
