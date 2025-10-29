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

    return MyoroSingleSelectionDropdown<TextAlign>(
      label: 'Indicator text alignment',
      selectedItemBuilder:
          (alignment) =>
              _alignments.entries
                  .firstWhere(
                    (entry) => entry.value == alignment,
                    orElse: () => const MapEntry('custom', TextAlign.center),
                  )
                  .key,
      onChanged: (alignment) => viewModel.state.indicatorTextAlignment = alignment,
      itemBuilder: (alignment) {
        final name = _alignments.entries.firstWhere((entry) => entry.value == alignment).key;
        return MyoroMenuIconTextButtonItem(textConfiguration: MyoroTextConfiguration(text: name));
      },
      items: _alignments.values.toSet(),
      selectedItem: viewModel.state.indicatorTextAlignment,
    );
  }
}
