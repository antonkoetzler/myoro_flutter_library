part of '../myoro_dropdown_widget_showcase_screen.dart';

/// [MyoroDropdownConfiguration.searchCallback] option of [MyoroDropdownWidgetShowcaseScreen].
final class _SearchCallbackOption extends StatelessWidget {
  const _SearchCallbackOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDropdownWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Search Callback:', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 8),
        Row(
          children: [
            Checkbox(
              value: state.searchCallbackEnabled,
              onChanged: (value) => state.searchCallbackEnabled = value ?? false,
            ),
            const Text('Enable Search Callback'),
          ],
        ),
        if (state.searchCallbackEnabled) const Text('Search callback is enabled - check console for search queries'),
      ],
    );
  }
}
