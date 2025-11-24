part of '../myoro_radio_filter_button_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroRadioFilterButtonWidgetShowcaseScreen].
final class _Widget extends StatefulWidget {
  const _Widget();

  @override
  State<_Widget> createState() => _WidgetState();
}

class _WidgetState extends State<_Widget> {
  final _items = <String>{'Option 1', 'Option 2', 'Option 3', 'Option 4', 'Option 5'};
  String? _selectedItem;

  @override
  Widget build(context) {
    final clearButtonText = localization.storybookFilterButtonClearButtonText;
    final applyButtonText = localization.storybookFilterButtonApplyButtonText;
    final buttonLabel = localization.storybookRadioFilterButtonLabel;

    return MyoroRadioFilterButton<String>(
      buttonLabel: buttonLabel,
      clearButtonText: clearButtonText,
      applyButtonText: applyButtonText,
      items: _items,
      itemLabelBuilder: (item) => item,
      selectedItem: _selectedItem,
      onChanged: (selectedItem) {
        setState(() {
          _selectedItem = selectedItem;
        });
      },
    );
  }
}
