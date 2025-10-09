part of '../myoro_scrollables_widget_showcase_screen.dart';

/// List scrollable section.
final class _ListScrollableSection extends StatelessWidget {
  const _ListScrollableSection();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();
    final listConfiguration = viewModel.listConfiguration;
    final style = viewModel.style;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('MyoroListScrollable'),
        const SizedBox(height: 8),
        const Text('A scrollable widget that displays a list of children with gradient overlays.'),
        const SizedBox(height: 16),
        Container(
          height: 300,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(8)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: MyoroListScrollable(
              configuration: listConfiguration,
              style: style,
              children: List.generate(
                20,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(color: Colors.green[100], borderRadius: BorderRadius.circular(8)),
                  child: Text('List Item ${index + 1}'),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
