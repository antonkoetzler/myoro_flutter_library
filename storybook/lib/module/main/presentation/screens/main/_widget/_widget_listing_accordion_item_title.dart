part of '../main_screen.dart';

/// Title [Widget] of an item in [_WidgetListingAccordion].
final class _WidgetListingAccordionItemTitle extends StatelessWidget {
  const _WidgetListingAccordionItemTitle(this._widgetCategory);

  final MyoroWidgetListEnum _widgetCategory;

  @override
  Widget build(_) {
    return Text(_widgetCategory.getLocalizedCategoryName(localization));
  }
}
