part of '../myoro_search_dropdown_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroSearchDropdownWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    return MyoroSearchDropdown(
      requestCallback: (_) async {
        await Future.delayed(const Duration(seconds: 1));
        return {localization.storybookSearchInputStartItemText, localization.storybookSearchInputEndItemText};
      },
      itemBuilder: (_, item) => MyoroMenuIconTextButtonItem(text: item),
      selectedItemBuilder: (item) => item,
    );
  }
}
