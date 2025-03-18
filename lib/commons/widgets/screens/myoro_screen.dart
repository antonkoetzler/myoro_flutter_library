import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

/// Root widget of any screen widget.
final class MyoroScreen extends StatefulWidget {
  /// [MyoroDrawerController] if it needs to be controlled externally.
  final MyoroDrawerController? drawerController;

  /// App bar of the screen.
  final PreferredSizeWidget? appBar;

  /// Body of the screen.
  final Widget? body;

  const MyoroScreen({super.key, this.drawerController, this.appBar, this.body});

  static Finder finder({
    MyoroDrawerController? drawerController,
    bool drawerControllerEnabled = false,
    PreferredSizeWidget? appBar,
    bool appBarEnabled = false,
    Widget? body,
    bool bodyEnabled = false,
  }) {
    return find.byWidgetPredicate(
      (Widget w) =>
          w is MyoroScreen &&
          (drawerControllerEnabled
              ? w.drawerController == drawerController
              : true) &&
          (appBarEnabled ? w.appBar == appBar : true) &&
          (bodyEnabled ? w.body == body : true),
    );
  }

  @override
  State<MyoroScreen> createState() => _MyoroScreenState();
}

final class _MyoroScreenState extends State<MyoroScreen> {
  PreferredSizeWidget? get _appBar => widget.appBar;
  Widget? get _body => widget.body;

  MyoroDrawerController? _localDrawerController;
  MyoroDrawerController get _drawerController {
    return widget.drawerController ??
        (_localDrawerController ??= MyoroDrawerController());
  }

  @override
  void dispose() {
    if (widget.drawerController == null) _drawerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
        child: Scaffold(
          key: _drawerController.scaffoldKey,
          appBar: _appBar,
          body: _body,
          drawer: drawer,
          endDrawer: drawer,
        ),
      ),
    );
  }
}

final class _Drawer extends StatelessWidget {
  final MyoroDrawerController _drawerController;

  const _Drawer(this._drawerController);

  @override
  Widget build(BuildContext context) => _drawerController.drawer!;
}
