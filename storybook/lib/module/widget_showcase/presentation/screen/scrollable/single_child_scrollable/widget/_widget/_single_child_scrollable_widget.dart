part of '../myoro_scrollables_widget_showcase_screen.dart';

/// [MyoroSingleChildScrollable] widget.
final class _SingleChildScrollableWidget extends StatelessWidget {
  const _SingleChildScrollableWidget({required this.style, required this.state});

  final MyoroScrollableStyle style;
  final MyoroScrollablesWidgetShowcaseScreenState state;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroScrollablesWidgetShowcaseScreenThemeExtension>();

    return MyoroSingleChildScrollable(
      style: style,
      direction: state.direction,
      reverse: state.reverse,
      clipBehavior: state.clipBehavior,
      dragStartBehavior: state.dragStartBehavior,
      physics: state.physics,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          20,
          (index) => Container(
            height: themeExtension.itemHeight,
            margin: themeExtension.itemMargin,
            color: themeExtension.singleChildScrollableItemColor,
            child: Center(
              child: Text(
                localization.storybookWidgetShowcaseOptionScrollableSingleChildScrollableItemLabel(index + 1),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
