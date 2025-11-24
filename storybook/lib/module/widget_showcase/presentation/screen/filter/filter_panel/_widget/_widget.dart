part of '../myoro_filter_panel_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroFilterPanelWidgetShowcaseScreen].
final class _Widget extends StatefulWidget {
  const _Widget();

  @override
  State<_Widget> createState() => _WidgetState();
}

class _WidgetState extends State<_Widget> {
  final _searchBarController = TextEditingController();
  final _checkboxItems = <String>{'Option 1', 'Option 2', 'Option 3'};
  final _checkboxSelectedItems = <String>{};
  final _radioItems = <String>{'Option A', 'Option B', 'Option C'};
  String? _radioSelectedItem;

  @override
  void dispose() {
    _searchBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    final clearButtonText = localization.storybookFilterButtonClearButtonText;
    final applyButtonText = localization.storybookFilterButtonApplyButtonText;
    final checkboxButtonLabel = localization.storybookCheckboxFilterButtonLabel;
    final radioButtonLabel = localization.storybookRadioFilterButtonLabel;

    return MyoroFilterPanel(
      searchBarController: _searchBarController,
      onFiltersCleared: () {
        setState(() {
          _searchBarController.clear();
          _checkboxSelectedItems.clear();
          _radioSelectedItem = null;
        });
      },
      filters: [
        MyoroCheckboxFilterButton<String>(
          buttonLabel: checkboxButtonLabel,
          clearButtonText: clearButtonText,
          applyButtonText: applyButtonText,
          items: _checkboxItems,
          itemLabelBuilder: (item) => item,
          selectedItems: _checkboxSelectedItems,
          onChanged: (selectedItems) {
            setState(() {
              _checkboxSelectedItems.clear();
              _checkboxSelectedItems.addAll(selectedItems);
            });
          },
        ),
        MyoroRadioFilterButton<String>(
          buttonLabel: radioButtonLabel,
          clearButtonText: clearButtonText,
          applyButtonText: applyButtonText,
          items: _radioItems,
          itemLabelBuilder: (item) => item,
          selectedItem: _radioSelectedItem,
          onChanged: (selectedItem) {
            setState(() {
              _radioSelectedItem = selectedItem;
            });
          },
        ),
      ],
    );
  }
}
