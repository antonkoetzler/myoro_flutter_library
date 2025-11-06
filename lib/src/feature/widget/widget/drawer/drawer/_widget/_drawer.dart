part of '../widget/myoro_drawer.dart';

/// The actual drawer of the [MyoroDrawer].
final class _Drawer extends StatelessWidget {
  const _Drawer(this._title, this._child);

  final String _title;
  final Widget _child;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroDrawerThemeExtension>();
    final style = context.watch<MyoroDrawerStyle>();
    final drawerShape = style.drawerShape ?? themeExtension.drawerShape;
    final titleContentDividerPadding =
        style.titleContentDividerPadding ?? themeExtension.titleContentDividerPadding ?? EdgeInsets.zero;

    return Drawer(
      shape: drawerShape,
      child: Column(
        children: [
          if (_title.isNotEmpty) ...[
            _Title(_title),
            Padding(padding: titleContentDividerPadding, child: const MyoroBasicDivider(Axis.horizontal)),
          ],
          Expanded(child: _child),
        ],
      ),
    );
  }
}
