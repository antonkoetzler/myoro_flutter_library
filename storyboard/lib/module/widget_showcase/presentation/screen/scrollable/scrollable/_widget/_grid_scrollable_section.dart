part of '../myoro_scrollables_widget_showcase_screen.dart';

/// Grid scrollable section.
final class _GridScrollableSection extends StatelessWidget {
  const _GridScrollableSection({required this.viewModel});

  final MyoroScrollableWidgetShowcaseViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('MyoroGridScrollable'),
        const SizedBox(height: 8),
        const Text('A scrollable widget that arranges children in a grid with gradient overlays.'),
        const SizedBox(height: 16),
        Container(
          height: 300,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(8)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: MyoroGridScrollable(
              configuration: viewModel.gridConfiguration,
              style: viewModel.style,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.5,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              children: List.generate(
                20,
                (index) => Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(color: Colors.orange[100], borderRadius: BorderRadius.circular(8)),
                  child: Center(child: Text('Grid ${index + 1}')),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
