part of 'myoro_scrollables_widget_showcase_screen_view_model.dart';

/// State of [MyoroScrollablesWidgetShowcaseScreenViewModel].
final class MyoroScrollablesWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroScrollableStyle.padding]
  EdgeInsets? _padding;

  /// [MyoroScrollable.direction]
  Axis _direction = Axis.vertical;

  /// [MyoroScrollable.reverse]
  bool _reverse = false;

  /// [MyoroScrollable.clipBehavior]
  Clip _clipBehavior = Clip.hardEdge;

  /// [MyoroScrollable.dragStartBehavior]
  DragStartBehavior _dragStartBehavior = DragStartBehavior.start;

  /// [MyoroScrollable.physics]
  ScrollPhysics? _physics;

  /// [MyoroListScrollable.itemCount]
  int? _itemCount;

  /// [MyoroListScrollable.primary]
  bool _primary = MyoroListScrollable.primaryDefaultValue;

  /// [MyoroListScrollable.shrinkWrap]
  bool _shrinkWrap = MyoroListScrollable.shrinkWrapDefaultValue;

  /// [MyoroListScrollable.addAutomaticKeepAlives]
  bool _addAutomaticKeepAlives = MyoroListScrollable.addAutomaticKeepAlivesDefaultValue;

  /// [MyoroListScrollable.addRepaintBoundaries]
  bool _addRepaintBoundaries = MyoroListScrollable.addRepaintBoundariesDefaultValue;

  /// [MyoroListScrollable.addSemanticIndexes]
  bool _addSemanticIndexes = MyoroListScrollable.addSemanticIndexesDefaultValue;

  /// [MyoroListScrollable.keyboardDismissBehavior]
  ScrollViewKeyboardDismissBehavior _keyboardDismissBehavior = MyoroListScrollable.keyboardDismissBehaviorDefaultValue;

  /// [MyoroListScrollable.hitTestBehavior]
  HitTestBehavior _hitTestBehavior = MyoroListScrollable.hitTestBehaviorDefaultValue;

  /// [_padding] getter.
  EdgeInsets? get padding => _padding;

  /// [_direction] getter.
  Axis get direction => _direction;

  /// [_reverse] getter.
  bool get reverse => _reverse;

  /// [_clipBehavior] getter.
  Clip get clipBehavior => _clipBehavior;

  /// [_dragStartBehavior] getter.
  DragStartBehavior get dragStartBehavior => _dragStartBehavior;

  /// [_physics] getter.
  ScrollPhysics? get physics => _physics;

  /// [_itemCount] getter.
  int? get itemCount => _itemCount;

  /// [_primary] getter.
  bool get primary => _primary;

  /// [_shrinkWrap] getter.
  bool get shrinkWrap => _shrinkWrap;

  /// [_addAutomaticKeepAlives] getter.
  bool get addAutomaticKeepAlives => _addAutomaticKeepAlives;

  /// [_addRepaintBoundaries] getter.
  bool get addRepaintBoundaries => _addRepaintBoundaries;

  /// [_addSemanticIndexes] getter.
  bool get addSemanticIndexes => _addSemanticIndexes;

  /// [_keyboardDismissBehavior] getter.
  ScrollViewKeyboardDismissBehavior get keyboardDismissBehavior => _keyboardDismissBehavior;

  /// [_hitTestBehavior] getter.
  HitTestBehavior get hitTestBehavior => _hitTestBehavior;

  /// [_padding] setter.
  set padding(EdgeInsets? padding) {
    _padding = padding;
    notifyListeners();
  }

  /// [_direction] setter.
  set direction(Axis direction) {
    _direction = direction;
    notifyListeners();
  }

  /// [_reverse] setter.
  set reverse(bool reverse) {
    _reverse = reverse;
    notifyListeners();
  }

  /// [_clipBehavior] setter.
  set clipBehavior(Clip clipBehavior) {
    _clipBehavior = clipBehavior;
    notifyListeners();
  }

  /// [_dragStartBehavior] setter.
  set dragStartBehavior(DragStartBehavior dragStartBehavior) {
    _dragStartBehavior = dragStartBehavior;
    notifyListeners();
  }

  /// [_physics] setter.
  set physics(ScrollPhysics? physics) {
    _physics = physics;
    notifyListeners();
  }

  /// [_itemCount] setter.
  set itemCount(int? itemCount) {
    _itemCount = itemCount;
    notifyListeners();
  }

  /// [_primary] setter.
  set primary(bool primary) {
    _primary = primary;
    notifyListeners();
  }

  /// [_shrinkWrap] setter.
  set shrinkWrap(bool shrinkWrap) {
    _shrinkWrap = shrinkWrap;
    notifyListeners();
  }

  /// [_addAutomaticKeepAlives] setter.
  set addAutomaticKeepAlives(bool addAutomaticKeepAlives) {
    _addAutomaticKeepAlives = addAutomaticKeepAlives;
    notifyListeners();
  }

  /// [_addRepaintBoundaries] setter.
  set addRepaintBoundaries(bool addRepaintBoundaries) {
    _addRepaintBoundaries = addRepaintBoundaries;
    notifyListeners();
  }

  /// [_addSemanticIndexes] setter.
  set addSemanticIndexes(bool addSemanticIndexes) {
    _addSemanticIndexes = addSemanticIndexes;
    notifyListeners();
  }

  /// [_keyboardDismissBehavior] setter.
  set keyboardDismissBehavior(ScrollViewKeyboardDismissBehavior keyboardDismissBehavior) {
    _keyboardDismissBehavior = keyboardDismissBehavior;
    notifyListeners();
  }

  /// [_hitTestBehavior] setter.
  set hitTestBehavior(HitTestBehavior hitTestBehavior) {
    _hitTestBehavior = hitTestBehavior;
    notifyListeners();
  }
}
