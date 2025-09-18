part of '../myoro_accordions_widget_showcase_screen.dart';

/// [MyoroAccordionThemeExtension.itemContentAnimationCurve] option of [MyoroAccordionWidgetShowcaseScreen].
final class _ItemContentAnimationCurveOption extends StatelessWidget {
  const _ItemContentAnimationCurveOption();

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
    final viewModel = context.read<MyoroAccordionsWidgetShowcaseScreenViewModel>();

    return MyoroSingularDropdown<Curve>(
      configuration: MyoroSingularDropdownConfiguration(
        label: 'Item content animation curve',
        allowItemClearing: true,
        selectedItemBuilder:
            (curve) =>
                _curves.entries
                    .firstWhere((entry) => entry.value == curve, orElse: () => const MapEntry('custom', Curves.linear))
                    .key,
        onChanged: (curve) => viewModel.state.itemContentAnimationCurve = curve,
        menuConfiguration: MyoroSingularMenuConfiguration(
          request: () => _curves.values.toSet(),
          selectedItem: viewModel.state.itemContentAnimationCurve,
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
