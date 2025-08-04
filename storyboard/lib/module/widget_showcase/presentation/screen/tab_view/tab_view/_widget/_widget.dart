part of '../myoro_tab_view_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroTabViewWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(_) {
    return Center(
      child: MyoroTabView(
        configuration: MyoroTabViewConfiguration(
          tabs: List.generate(faker.randomGenerator.integer(5, min: 2), (_) => MyoroTabViewTab.fake()),
        ),
      ),
    );
  }
}
