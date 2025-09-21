part of '../myoro_sliders_widget_showcase_screen.dart';

/// [MyoroSliderThemeExtension.indicatorTextAlignment] option of [MyoroSlidersWidgetShowcaseScreen].
final class _IndicatorTextAlignmentOption extends StatelessWidget {
  const _IndicatorTextAlignmentOption();

  static const _alignments = {
    'left': TextAlign.left,
    'right': TextAlign.right,
    'center': TextAlign.center,
    'justify': TextAlign.justify,
    'start': TextAlign.start,
    'end': TextAlign.end,
  };

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSlidersWidgetShowcaseScreenViewModel>();

    return MyoroSingleDropdown<TextAlign>(
      configuration: MyoroSingleDropdownConfiguration(
        label: 'Indicator text alignment',
        allowItemClearing: true,
        selectedItemBuilder:
            (alignment) =>
                _alignments.entries
                    .firstWhere(
                      (entry) => entry.value == alignment,
                      orElse: () => const MapEntry('custom', TextAlign.center),
                    )
                    .key,
        onChanged: (alignment) => viewModel.state.indicatorTextAlignment = alignment,
        menuConfiguration: MyoroSingleMenuConfiguration(
          request: () => _alignments.values.toSet(),
          selectedItem: viewModel.state.indicatorTextAlignment,
          itemBuilder: (alignment) {
            final name = _alignments.entries.firstWhere((entry) => entry.value == alignment).key;
            return MyoroMenuItem(
              iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
                textConfiguration: MyoroTextConfiguration(text: name),
              ),
            );
          },
        ),
      ),
    );
  }
}
