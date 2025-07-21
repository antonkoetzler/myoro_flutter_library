part of '../myoro_screen.dart';

final class _Drawer extends StatelessWidget {
  final MyoroDrawerController _drawerController;

  const _Drawer(this._drawerController);

  @override
  Widget build(context) => _drawerController.drawer!;
}
