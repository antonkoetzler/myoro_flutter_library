part of 'myoro_accordion_view_model.dart';

/// State of [MyoroAccordionViewModel].
class MyoroAccordionState extends ChangeNotifier {
  /// Controller
  MyoroAccordionController? _controller;

  /// [_controller] getter.
  MyoroAccordionController get controller {
    assert(_controller != null, '[MyoroAccordionController.controller]: [controller] hasen\'t been set yet.');
    return _controller!;
  }

  /// [_controller] setter.
  set controller(MyoroAccordionController controller) {
    if (_controller == controller) return;
    _controller = controller;
    notifyListeners();
  }

  /// [ScrollController] of the [MyoroAccordion]'s [ListView].
  final _scrollController = ScrollController();

  /// [_scrollController] getter.
  ScrollController get scrollController => _scrollController;

  /// Dispose function
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
