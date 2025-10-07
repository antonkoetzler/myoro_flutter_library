part of '../myoro_scrollables_widget_showcase_screen.dart';

/// Sliver scrollable section.
final class _SliverScrollableSection extends StatelessWidget {
  const _SliverScrollableSection({required this.viewModel});

  final MyoroScrollableWidgetShowcaseViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('MyoroSliverScrollable'),
        const SizedBox(height: 8),
        const Text('A scrollable widget that uses slivers for custom scroll effects with gradient overlays.'),
        const SizedBox(height: 16),
        Container(
          height: 300,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(8)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: MyoroSliverScrollable(
              configuration: viewModel.sliverConfiguration,
              style: viewModel.style,
              slivers: [
                SliverAppBar(title: const Text('Sliver App Bar'), floating: true, backgroundColor: Colors.purple[100]),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => Container(
                      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(color: Colors.purple[100], borderRadius: BorderRadius.circular(8)),
                      child: Text('Sliver Item ${index + 1}'),
                    ),
                    childCount: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
