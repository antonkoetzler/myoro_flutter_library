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

    return MyoroSingleSelectionDropdown<FloatingLabelBehavior>(
      configuration: MyoroSingleSelectionDropdownConfiguration(
        label: 'Label behavior',
        selectedItemBuilder:
            (behavior) =>
                _behaviors.entries
                    .firstWhere(
                      (entry) => entry.value == behavior,
                      orElse: () => const MapEntry('custom', FloatingLabelBehavior.auto),
                    )
                    .key,
        onChanged: (behavior) => viewModel.state.labelBehavior = behavior,
        menuConfiguration: MyoroSingleMenuConfiguration(
          request: () => _behaviors.values.toSet(),
          selectedItem: viewModel.state.labelBehavior,
          itemBuilder: (behavior) {
            final name = _behaviors.entries.firstWhere((entry) => entry.value == behavior).key;
            return MyoroMenuIconTextButtonItem(textConfiguration: MyoroTextConfiguration(text: name));
          },
        ),
      ),
    );
  }
}
