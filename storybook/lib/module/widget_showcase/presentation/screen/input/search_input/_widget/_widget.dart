part of '../myoro_search_input_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroSearchInputWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    return MyoroSearchInput(
      requestCallback: (_) async {
        await Future.delayed(const Duration(seconds: 1));
        return {localization.storybookSearchInputStartItemText, localization.storybookSearchInputEndItemText};
      },
      itemBuilder: (item, _) => MyoroMenuIconTextButtonItem(text: item),
      selectedItemBuilder: (item) => item,
    );
  }
}
