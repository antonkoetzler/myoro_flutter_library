part of '../widget/myoro_scrollables_widget_showcase_screen.dart';

/// [MyoroListScrollable] widget.
final class _ListScrollableWidget extends StatelessWidget {
  /// Default constructor.
  const _ListScrollableWidget({required this.style, required this.state});

  /// Style.
  final MyoroListScrollableStyle style;

  /// State.
  final MyoroScrollablesWidgetShowcaseScreenState state;

  /// Build function.
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
