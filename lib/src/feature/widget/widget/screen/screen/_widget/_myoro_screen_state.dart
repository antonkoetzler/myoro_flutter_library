part of '../widget/myoro_screen.dart';

/// [State] of [MyoroScreen].
final class _MyoroScreenState extends State<MyoroScreen> {
  /// Local drawer controller.
  MyoroDrawerController? _localDrawerController;

  /// Effective drawer controller.
  MyoroDrawerController get _drawerController {
    return widget.drawerController ?? (_localDrawerController ??= MyoroDrawerController());
  }

  /// Dispose function.
  @override
  void dispose() {
    _localDrawerController?.dispose();
    super.dispose();
  }

  /// Build function.
  @override
  Widget build(context) {
    final isEndDrawerController = _drawerController.isEndDrawerController;
    final selectedDrawerController = _drawerController.selectedDrawerController;

    // This is the only way that the content of the drawer will update
    // when [MyoroDrawerController.openDrawer] is called. If you do
    // `drawer: _drawerController.drawer ?? const SizedBox.shrink()` the
    // content will not update. Bizarre.
    //
    // Perhaps it's because [_Drawer] is using a bang operator to get the
    // drawer's content ([_drawerController.drawer!]) along with the fact that
    // it is rebuilt when a [Scaffold] drawer is activated.
    final drawer = _Drawer(_drawerController);

    return InheritedProvider.value(
      value: _drawerController,
      child: SafeArea(
        child: ListenableBuilder(
          listenable: Listenable.merge([isEndDrawerController, selectedDrawerController]),
          builder: (_, _) {
            final isEndDrawer = isEndDrawerController.value;
            final selectedDrawer = selectedDrawerController.value;

            final selectedDrawerNotNull = selectedDrawer != null;
            final drawerEnableOpenDragGesture =
                !isEndDrawer && selectedDrawerNotNull && widget.drawerEnableOpenDragGesture;
            final endDrawerEnableOpenDragGesture =
                isEndDrawer && selectedDrawerNotNull && widget.endDrawerEnableOpenDragGesture;

            return Scaffold(
              key: _drawerController.scaffoldKey,
              appBar: widget.appBar,
              body: widget.body,
              bottomNavigationBar: widget.bottomNavigationBar,
              drawer: drawer,
              endDrawer: drawer,
              drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
              endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
            );
          },
        ),
      ),
    );
  }
}
