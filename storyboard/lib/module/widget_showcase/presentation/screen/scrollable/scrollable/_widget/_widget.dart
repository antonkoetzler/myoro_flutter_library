part of '../myoro_scrollables_widget_showcase_screen.dart';

/// Main widget for the scrollable showcase.
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return const _ScrollableShowcase();
  }
}

/// Widget that displays all scrollable widgets.
final class _ScrollableShowcase extends StatelessWidget {
  const _ScrollableShowcase();

  @override
  Widget build(BuildContext context) {
    return Consumer<MyoroScrollableWidgetShowcaseViewModel>(
      builder: (context, viewModel, child) {
        return SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              _SingleChildScrollableSection(viewModel: viewModel),
              const SizedBox(height: 40),
              _ListScrollableSection(viewModel: viewModel),
              const SizedBox(height: 40),
              _GridScrollableSection(viewModel: viewModel),
              const SizedBox(height: 40),
              _SliverScrollableSection(viewModel: viewModel),
              const SizedBox(height: 40),
            ],
          ),
        );
      },
    );
  }
}
