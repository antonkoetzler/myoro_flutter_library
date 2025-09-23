part of '../myoro_drawer.dart';

/// The actual drawer of the [MyoroDrawer].
final class _Drawer extends StatelessWidget {
  const _Drawer();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroDrawerThemeExtension>();

    final configuration = context.read<MyoroDrawerConfiguration>();
    final title = configuration.title;
    final child = configuration.child;

    final drawerPadding = themeExtension.drawerPadding ?? EdgeInsets.zero;
    final drawerShape = themeExtension.drawerShape;
    final drawerContentPadding = themeExtension.drawerContentPadding ?? EdgeInsets.zero;
    final titleContentDividerPadding = themeExtension.titleContentDividerPadding ?? EdgeInsets.zero;

    return Padding(
      padding: drawerPadding,
      child: Drawer(
        shape: drawerShape,
        child: Padding(
          padding: drawerContentPadding,
          child: Column(
            children: [
              if (title.isNotEmpty) ...[
                _Title(configuration),
                Padding(padding: titleContentDividerPadding, child: const MyoroBasicDivider(Axis.horizontal)),
              ],
              Expanded(child: child),
            ],
          ),
        ),
      ),
    );
  }
}
