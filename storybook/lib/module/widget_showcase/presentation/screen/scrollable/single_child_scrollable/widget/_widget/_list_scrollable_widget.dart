part of '../myoro_scrollables_widget_showcase_screen.dart';

/// [MyoroListScrollable] widget.
final class _ListScrollableWidget extends StatelessWidget {
  const _ListScrollableWidget({required this.style, required this.state});

  final MyoroScrollableStyle style;
  final MyoroScrollablesWidgetShowcaseScreenState state;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroScrollablesWidgetShowcaseScreenThemeExtension>();

    return MyoroListScrollable(
      style: style,
      direction: state.direction,
      reverse: state.reverse,
      clipBehavior: state.clipBehavior,
      dragStartBehavior: state.dragStartBehavior,
      physics: state.physics,
      itemCount: state.itemCount,
      itemBuilder: (_, index) {
        return Container(
          height: themeExtension.itemHeight,
          margin: themeExtension.itemMargin,
          color: themeExtension.listScrollableItemColor,
          child: Center(
            child: Text(localization.storybookWidgetShowcaseOptionScrollableListScrollableItemLabel(index + 1)),
          ),
        );
      },
      primary: state.primary,
      shrinkWrap: state.shrinkWrap,
      addAutomaticKeepAlives: state.addAutomaticKeepAlives,
      addRepaintBoundaries: state.addRepaintBoundaries,
      addSemanticIndexes: state.addSemanticIndexes,
      keyboardDismissBehavior: state.keyboardDismissBehavior,
      hitTestBehavior: state.hitTestBehavior,
    );
  }
}
