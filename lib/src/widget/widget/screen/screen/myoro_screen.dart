import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_drawer.dart';

/// Root widget of any screen widget.
class MyoroScreen extends MyoroStatefulWidget {
  /// Configuration.
  final MyoroScreenConfiguration configuration;

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
          appBar: _configuration.appBar,
          body: _configuration.body,
          drawer: drawer,
          endDrawer: drawer,
        ),
      ),
    );
  }
}
