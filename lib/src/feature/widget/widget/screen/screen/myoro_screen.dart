import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_drawer.dart';

/// Root widget of any screen widget.
class MyoroScreen extends StatefulWidget {
  /// Configuration.
  final MyoroScreenConfiguration configuration;

  /// Creates a new instance of [MyoroScreen].
  const MyoroScreen({super.key, required this.configuration});

  @override
  State<MyoroScreen> createState() => _MyoroScreenState();
}

final class _MyoroScreenState extends State<MyoroScreen> {
  MyoroScreenConfiguration get _configuration => widget.configuration;

  MyoroDrawerController? _localDrawerController;
  MyoroDrawerController get _drawerController {
    return _configuration.drawerController ?? (_localDrawerController ??= MyoroDrawerController());
  }

  @override
  void dispose() {
    _localDrawerController?.dispose();
    super.dispose();
  }

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
                !isEndDrawer && selectedDrawerNotNull && _configuration.drawerEnableOpenDragGesture;
            final endDrawerEnableOpenDragGesture =
                isEndDrawer && selectedDrawerNotNull && _configuration.endDrawerEnableOpenDragGesture;

            return Scaffold(
              key: _drawerController.scaffoldKey,
              appBar: _configuration.appBar,
              body: _configuration.body,
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
