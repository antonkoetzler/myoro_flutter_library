part of '../myoro_dropdowns_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroDropdownWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();
    final spacing = widgetShowcaseThemeExtension.spacing;

    final viewModel = context.read<MyoroDropdownsWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final singleDropdownOverlayTargetKey = state.singleDropdownOverlayTargetKey;
    final multiDropdownOverlayTargetKey = state.multiDropdownOverlayTargetKey;
    final singleDropdownController = state.singleDropdownController;
    final multiDropdownController = state.multiDropdownController;

    return ListenableBuilder(
      listenable: state,
      builder: (_, _) {
        singleDropdownController.configuration = viewModel.buildSingleDropdownConfiguration();
        multiDropdownController.configuration = viewModel.buildMultiDropdownConfiguration();

        return Column(
          spacing: spacing,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: MyoroSingleDropdown(
                controller: singleDropdownController,
                child: GestureDetector(
                  onTapUp: (_) => singleDropdownController.toggleDropdown(),
                  child: MyoroCard(key: singleDropdownOverlayTargetKey, child: const Text('Press to show dropdown!')),
                ),
              ),
            ),
            Flexible(
              child: MyoroMultiDropdown(
                controller: multiDropdownController,
                child: GestureDetector(
                  onTapUp: (_) => multiDropdownController.toggleDropdown(),
                  child: MyoroCard(key: multiDropdownOverlayTargetKey, child: const Text('Press to show dropdown!')),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
