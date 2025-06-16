part of '../myoro_dropdown_widget_showcase.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroDropdownWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDropdownWidgetShowcaseViewModel>();
    final widgetShowcaseOptionThemeExtension = context.resolveThemeExtension<WidgetShowcaseOptionThemeExtension>();

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, __) {
        return ListenableBuilder(
          listenable: viewModel.menuViewModel.state,
          builder: (_, __) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              spacing: widgetShowcaseOptionThemeExtension.spacing,
              children: const [
                _Title('MyoroSingularDropdown'),
                Flexible(child: _SingularDropdown()),
                _Title('MyoroMultiDropdown'),
                Flexible(child: _MultiDropdown()),
              ],
            );
          },
        );
      },
    );
  }
}
