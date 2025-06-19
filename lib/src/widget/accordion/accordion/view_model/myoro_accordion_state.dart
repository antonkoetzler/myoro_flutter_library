import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroAccordionViewModel].
class MyoroAccordionState extends ChangeNotifier {
  MyoroAccordionState(this._controller);

  /// Controller
  MyoroAccordionController _controller;
  MyoroAccordionController get controller => _controller;
  set controller(MyoroAccordionController controller) {
    if (_controller == controller) return;
    _controller = controller;
    notifyListeners();
  }

  /// [ScrollController] of the [MyoroAccordion]'s [ListView].
  final _scrollController = ScrollController();
  ScrollController get scrollController => _scrollController;

  /// Dispose function
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
