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
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();
    final spacing = widgetShowcaseThemeExtension.spacing;
    final contentPadding = widgetShowcaseThemeExtension.contentPadding;

    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return ListenableBuilder(
      listenable: state,
      builder: (_, _) {
        return SingleChildScrollView(
          padding: contentPadding,
          child: Column(
            spacing: spacing,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Flexible(child: _SingleChildScrollableSection()),
              Flexible(child: _ListScrollableSection()),
              Flexible(child: _GridScrollableSection()),
              Flexible(child: _SliverScrollableSection()),
            ],
          ),
        );
      },
    );
  }
}
