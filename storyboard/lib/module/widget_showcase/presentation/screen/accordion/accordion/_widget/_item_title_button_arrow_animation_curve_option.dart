part of '../myoro_accordion_widget_showcase_screen.dart';

/// [MyoroAccordionThemeExtension.itemTitleButtonArrowAnimationCurve] option of [MyoroAccordionWidgetShowcaseScreen].
final class _ItemTitleButtonArrowAnimationCurveOption extends StatelessWidget {
  const _ItemTitleButtonArrowAnimationCurveOption();

  static const _curves = {
    'linear': Curves.linear,
    'ease': Curves.ease,
    'easeIn': Curves.easeIn,
    'easeOut': Curves.easeOut,
    'easeInOut': Curves.easeInOut,
    'fastOutSlowIn': Curves.fastOutSlowIn,
    'bounceIn': Curves.bounceIn,
    'bounceOut': Curves.bounceOut,
    'elasticIn': Curves.elasticIn,
    'elasticOut': Curves.elasticOut,
  };

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAccordionWidgetShowcaseScreenViewModel>();

    return MyoroSingularDropdown<Curve>(
      configuration: MyoroSingularDropdownConfiguration(
        label: 'Arrow animation curve',
        allowItemClearing: true,
        selectedItem: viewModel.state.itemTitleButtonArrowAnimationCurve,
        selectedItemBuilder:
            (curve) =>
                _curves.entries
                    .firstWhere(
                      (entry) => entry.value == curve,
                      orElse: () => const MapEntry('custom', Curves.linear),
                    )
                    .key,
        onChanged: (curve) => viewModel.state.itemTitleButtonArrowAnimationCurve = curve,
        menuConfiguration: MyoroSingularMenuConfiguration(
          request: () => _curves.values.toSet(),
          itemBuilder: (curve) {
            final name = _curves.entries.firstWhere((entry) => entry.value == curve).key;
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
