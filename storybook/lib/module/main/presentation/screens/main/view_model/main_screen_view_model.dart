import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:storybook/storybook.dart';

/// View model of [MainScreen].
final class MainScreenViewModel {
  /// [ValueNotifier] controlling which [MyoroWidgetListEnum] categories are being shown.
  final _filteredItemsController = ValueNotifier<Iterable<MyoroWidgetListEnum>>(MyoroWidgetListEnum.values);

  /// Dispose function.
  void dispose() {
    _filteredItemsController.dispose();
  }

  /// [MyoroInputConfiguration.onChanged] of the search bar.
  void widgetListingAccordionSearchBarOnChanged(String text) {
    filteredItems = MyoroWidgetListEnum.values.where((v) => v.name.toUpperCase().contains(text.toUpperCase()));
  }

  /// On tap up of widget listing accordion item.
  void widgetListingAccordionItemContentButtonOnTapUp(BuildContext context, String widgetName) {
    context.push('/widget_showcase/$widgetName');
  }

  /// [_filteredItemsController] getter.
  ValueNotifier<Iterable<MyoroWidgetListEnum>> get filteredItemsController => _filteredItemsController;

  /// Getter of [_filteredItemsController]'s value.
  List<MyoroWidgetListEnum> get filteredItems => _filteredItemsController.value.toList();

  /// [_filteredItemsController] setter.
  set filteredItems(Iterable<MyoroWidgetListEnum> filteredItems) {
    _filteredItemsController.value = filteredItems;
  }
}
