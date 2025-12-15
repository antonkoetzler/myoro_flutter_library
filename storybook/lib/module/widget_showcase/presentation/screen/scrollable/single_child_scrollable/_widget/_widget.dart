part of '../widget/myoro_scrollables_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroScrollablesWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  /// Default constructor.
  const _Widget();

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroScrollablesWidgetShowcaseScreenThemeExtension>();
    final spacing = themeExtension.spacing;
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return ListenableBuilder(
      listenable: state,
      builder: (_, __) {
        final style = viewModel.style;
        final listScrollableStyle = viewModel.listScrollableStyle;

        return LayoutBuilder(
          builder: (_, BoxConstraints constraints) {
            final isWide = constraints.maxWidth > 800;
            final scrollables = [
              _SingleChildScrollableWidget(style: style, state: state),
              _ListScrollableWidget(style: listScrollableStyle, state: state),
            ];

            return isWide
                ? Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: spacing,
                  children: scrollables.map((widget) => Expanded(child: widget)).toList(),
                )
                : Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: spacing,
                  children: scrollables,
                );
          },
        );
      },
    );
  }
}
