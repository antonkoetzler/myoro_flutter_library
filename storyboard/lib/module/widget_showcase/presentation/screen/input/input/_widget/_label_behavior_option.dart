part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputThemeExtension.labelBehavior] option of [MyoroInputWidgetShowcaseScreen].
final class _LabelBehaviorOption extends StatelessWidget {
  const _LabelBehaviorOption();

  static const _behaviors = {
    'never': FloatingLabelBehavior.never,
    'auto': FloatingLabelBehavior.auto,
    'always': FloatingLabelBehavior.always,
  };

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return MyoroSingularDropdown<FloatingLabelBehavior>(
      configuration: MyoroSingularDropdownConfiguration(
        label: 'Label behavior',
        allowItemClearing: true,
        selectedItem: viewModel.state.labelBehavior,
        selectedItemBuilder:
            (behavior) =>
                _behaviors.entries
                    .firstWhere(
                      (entry) => entry.value == behavior,
                      orElse: () => const MapEntry('custom', FloatingLabelBehavior.auto),
                    )
                    .key,
        onChanged: (behavior) => viewModel.state.labelBehavior = behavior,
        menuConfiguration: MyoroSingularMenuConfiguration(
          request: () => _behaviors.values.toSet(),
          itemBuilder: (behavior) {
            final name = _behaviors.entries.firstWhere((entry) => entry.value == behavior).key;
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
