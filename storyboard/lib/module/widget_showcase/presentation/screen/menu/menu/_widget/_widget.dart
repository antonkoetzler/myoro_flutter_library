part of '../myoro_menus_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroMenusWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();
    final spacing = widgetShowcaseThemeExtension.spacing;

    final viewModel = context.read<MyoroMenusWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return ListenableBuilder(
      listenable: state,
      builder: (_, _) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: spacing,
          children: const [_SingularMenu(), _MultiMenu()],
        );
      },
    );
  }
}
