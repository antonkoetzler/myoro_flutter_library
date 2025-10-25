part of '../myoro_search_input_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroSearchInputWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    return MyoroSearchInput(
      request: (_) async {
        await Future.delayed(const Duration(seconds: 1));
        return {'Start', 'End'};
      },
      itemBuilder: (item) {
        return MyoroMenuIconTextButtonItem(textConfiguration: MyoroTextConfiguration(text: item));
      },
      selectedItemBuilder: (item) {
        return item;
      },
    );
  }
}
