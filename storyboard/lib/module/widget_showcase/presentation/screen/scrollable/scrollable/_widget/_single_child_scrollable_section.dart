part of '../myoro_scrollables_widget_showcase_screen.dart';

/// Single child scrollable section.
final class _SingleChildScrollableSection extends StatelessWidget {
  const _SingleChildScrollableSection({required this.viewModel});

  final MyoroScrollableWidgetShowcaseViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('MyoroSingleChildScrollable'),
        const SizedBox(height: 8),
        const Text('A scrollable widget that contains a single child with gradient overlays.'),
        const SizedBox(height: 16),
        Container(
          height: 300,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(8)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: MyoroSingleChildScrollable(
              configuration: viewModel.singleChildConfiguration,
              style: viewModel.style,
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: List.generate(
                    20,
                    (index) => Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(color: Colors.blue[100], borderRadius: BorderRadius.circular(8)),
                      child: Text('Single Child Item ${index + 1}'),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
