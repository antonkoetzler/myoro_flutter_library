part of '../myoro_dialog_modal_widget_showcase_screen.dart';

/// [MyoroDialogModalConfiguration.child]'s [Widget] in [MyoroDialogModalWidgetShowcaseScreen].
final class _ChildWidget extends StatelessWidget {
  const _ChildWidget();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.read<MyoroDialogModalWidgetShowcaseScreenThemeExtension>();

    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: themeExtension.childWidgetBorderRadius,
      child: Image.asset(kSnazzyCat, width: themeExtension.childWidgetSize, fit: BoxFit.contain),
    );
  }
}
