part of '../widget_showcase_screen.dart';

/// A section header widget for the widget options modal.
final class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseScreenThemeExtension>();

    return Align(
      alignment: Alignment.center,
      child: Text(title, style: themeExtension.sectionHeaderTextStyle),
    );
  }
}
