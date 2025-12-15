part of 'myoro_scrollables_widget_showcase_screen_view_model.dart';

/// State of [MyoroScrollablesWidgetShowcaseScreenViewModel].
final class MyoroScrollablesWidgetShowcaseScreenState extends ChangeNotifier {
  /// Item count.
  final _itemCount = faker.randomGenerator.integer(100, min: 20);

  /// [MyoroScrollableStyle.padding]
  EdgeInsets? _padding;

  /// [MyoroListScrollableStyle.spacing]
  double? _spacing;

  /// Direction.
  Axis _direction = Axis.vertical;

  /// Reverse.
  bool _reverse = false;

  /// Clip behavior.
  Clip _clipBehavior = Clip.hardEdge;

  /// Drag start behavior.
  DragStartBehavior _dragStartBehavior = DragStartBehavior.start;

  /// Physics.
  ScrollPhysics? _physics;

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

  /// [_itemCount] getter.
  int get itemCount {
    return _itemCount;
  }

  /// [_padding] getter.
  EdgeInsets? get padding {
    return _padding;
  }

  /// [_spacing] getter.
  double? get spacing {
    return _spacing;
  }

  /// [_direction] getter.
  Axis get direction {
    return _direction;
  }

  /// [_reverse] getter.
  bool get reverse {
    return _reverse;
  }

  /// [_clipBehavior] getter.
  Clip get clipBehavior {
    return _clipBehavior;
  }

  /// [_dragStartBehavior] getter.
  DragStartBehavior get dragStartBehavior {
    return _dragStartBehavior;
  }

  /// [_physics] getter.
  ScrollPhysics? get physics {
    return _physics;
  }

  /// [_primary] getter.
  bool get primary {
    return _primary;
  }

  /// [_shrinkWrap] getter.
  bool get shrinkWrap {
    return _shrinkWrap;
  }

  /// [_addAutomaticKeepAlives] getter.
  bool get addAutomaticKeepAlives {
    return _addAutomaticKeepAlives;
  }

  /// [_addRepaintBoundaries] getter.
  bool get addRepaintBoundaries {
    return _addRepaintBoundaries;
  }

  /// [_addSemanticIndexes] getter.
  bool get addSemanticIndexes {
    return _addSemanticIndexes;
  }

  /// [_keyboardDismissBehavior] getter.
  ScrollViewKeyboardDismissBehavior get keyboardDismissBehavior {
    return _keyboardDismissBehavior;
  }

  /// [_hitTestBehavior] getter.
  HitTestBehavior get hitTestBehavior {
    return _hitTestBehavior;
  }

  /// [_padding] setter.
  set padding(EdgeInsets? padding) {
    if (_padding == padding) {
      return;
    }
    _padding = padding;
    notifyListeners();
  }

  /// [_spacing] setter.
  set spacing(double? spacing) {
    if (_spacing == spacing) {
      return;
    }
    _spacing = spacing;
    notifyListeners();
  }

  /// [_direction] setter.
  set direction(Axis direction) {
    if (_direction == direction) {
      return;
    }
    _direction = direction;
    notifyListeners();
  }

  /// [_reverse] setter.
  set reverse(bool reverse) {
    if (_reverse == reverse) {
      return;
    }
    _reverse = reverse;
    notifyListeners();
  }

  /// [_clipBehavior] setter.
  set clipBehavior(Clip clipBehavior) {
    if (_clipBehavior == clipBehavior) {
      return;
    }
    _clipBehavior = clipBehavior;
    notifyListeners();
  }

  /// [_dragStartBehavior] setter.
  set dragStartBehavior(DragStartBehavior dragStartBehavior) {
    if (_dragStartBehavior == dragStartBehavior) {
      return;
    }
    _dragStartBehavior = dragStartBehavior;
    notifyListeners();
  }

  /// [_physics] setter.
  set physics(ScrollPhysics? physics) {
    if (_physics == physics) {
      return;
    }
    _physics = physics;
    notifyListeners();
  }

  /// [_primary] setter.
  set primary(bool primary) {
    if (_primary == primary) {
      return;
    }
    _primary = primary;
    notifyListeners();
  }

  /// [_shrinkWrap] setter.
  set shrinkWrap(bool shrinkWrap) {
    if (_shrinkWrap == shrinkWrap) {
      return;
    }
    _shrinkWrap = shrinkWrap;
    notifyListeners();
  }

  /// [_addAutomaticKeepAlives] setter.
  set addAutomaticKeepAlives(bool addAutomaticKeepAlives) {
    if (_addAutomaticKeepAlives == addAutomaticKeepAlives) {
      return;
    }
    _addAutomaticKeepAlives = addAutomaticKeepAlives;
    notifyListeners();
  }

  /// [_addRepaintBoundaries] setter.
  set addRepaintBoundaries(bool addRepaintBoundaries) {
    if (_addRepaintBoundaries == addRepaintBoundaries) {
      return;
    }
    _addRepaintBoundaries = addRepaintBoundaries;
    notifyListeners();
  }

  /// [_addSemanticIndexes] setter.
  set addSemanticIndexes(bool addSemanticIndexes) {
    if (_addSemanticIndexes == addSemanticIndexes) {
      return;
    }
    _addSemanticIndexes = addSemanticIndexes;
    notifyListeners();
  }

  /// [_keyboardDismissBehavior] setter.
  set keyboardDismissBehavior(ScrollViewKeyboardDismissBehavior keyboardDismissBehavior) {
    if (_keyboardDismissBehavior == keyboardDismissBehavior) {
      return;
    }
    _keyboardDismissBehavior = keyboardDismissBehavior;
    notifyListeners();
  }

  /// [_hitTestBehavior] setter.
  set hitTestBehavior(HitTestBehavior hitTestBehavior) {
    if (_hitTestBehavior == hitTestBehavior) {
      return;
    }
    _hitTestBehavior = hitTestBehavior;
    notifyListeners();
  }
}
