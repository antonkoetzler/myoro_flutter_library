part of '../myoro_checkbox_filter_button_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroCheckboxFilterButtonWidgetShowcaseScreen].
final class _Widget extends StatefulWidget {
  const _Widget();

  @override
  State<_Widget> createState() => _WidgetState();
}

class _WidgetState extends State<_Widget> {
  final _items = <String>{for (int i = 0; i < 10; i++) 'Option ${i + 1}'};
  final _selectedItems = <String>{};

  @override
  Widget build(context) {
    final clearButtonText = localization.storybookFilterButtonClearButtonText;
    final applyButtonText = localization.storybookFilterButtonApplyButtonText;
    final buttonLabel = localization.storybookCheckboxFilterButtonLabel;

    return MyoroCheckboxFilterButton<String>(
      buttonLabel: buttonLabel,
      clearButtonText: clearButtonText,
      applyButtonText: applyButtonText,
      items: _items,
      itemLabelBuilder: (item) => item,
      selectedItems: _selectedItems,
      onChanged: (selectedItems) {
        setState(() {
          _selectedItems.clear();
          _selectedItems.addAll(selectedItems);
        });
      },
    );
  }
}
