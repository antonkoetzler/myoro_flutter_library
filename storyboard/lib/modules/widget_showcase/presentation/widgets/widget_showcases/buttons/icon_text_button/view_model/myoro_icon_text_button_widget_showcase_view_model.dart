import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroIconTextButtonWidgetShowcase].
final class MyoroIconTextButtonWidgetShowcaseViewModel extends ChangeNotifier {
  /// [MyoroIconTextButtonConfiguration.invert]
  bool _invert = MyoroIconTextButtonConfiguration.invertDefaultValue;
  bool get invert => _invert;
  set invert(bool invert) {
    _invert = invert;
    notifyListeners();
  }

  /// [MyoroIconTextButtonConfiguration.spacing]
  double? _spacing;
  double? get spacing => _spacing;
  set spacing(double? spacing) {
    _spacing = spacing;
    notifyListeners();
  }

  /// [MyoroIconTextButtonConfiguration.padding]
  EdgeInsets? _padding;
  EdgeInsets? get padding => _padding;
  set padding(EdgeInsets? padding) {
    _padding = padding;
    notifyListeners();
  }

  /// If [MyoroIconTextButtonConfiguration.contentColorBuilder] is enabled.
  bool _enableContentColorBuilder = false;
  bool get enableContentColorBuilder => _enableContentColorBuilder;
  set enableContentColorBuilder(bool enableContentColorBuilder) {
    _enableContentColorBuilder = enableContentColorBuilder;
    notifyListeners();
  }

  /// [MyoroIconTextButtonConfiguration.contentColorBuilder]'s [Color] of [MyoroTapStatusEnum.idle].
  Color? _idleContentColor;
  Color get idleContentColor => _idleContentColor ?? MyoroColorDesignSystem.transparent;
  set idleContentColor(Color? idleContentColor) {
    _idleContentColor = idleContentColor;
    notifyListeners;
  }

  /// [MyoroIconTextButtonConfiguration.contentColorBuilder]'s [Color] of [MyoroTapStatusEnum.hover].
  Color? _hoverContentColor;
  Color get hoverContentColor => _hoverContentColor ?? MyoroColorDesignSystem.transparent;
  set hoverContentColor(Color? hoverContentColor) {
    _hoverContentColor = hoverContentColor;
    notifyListeners();
  }

  /// [MyoroIconTextButtonConfiguration.contentColorBuilder]'s [Color] of [MyoroTapStatusEnum.tap].
  Color? _tapContentColor;
  Color get tapContentColor => _tapContentColor ?? MyoroColorDesignSystem.transparent;
  set tapContentColor(Color? tapContentColor) {
    _tapContentColor = tapContentColor;
    notifyListeners();
  }

  /// [MyoroIconTextButtonIconConfiguration.icon]
  IconData? _icon = myoroFake<IconData>();
  IconData? get icon => _icon;
  set icon(IconData? icon) {
    _icon = icon;
    notifyListeners();
  }

  /// [MyoroIconTextButtonIconConfiguration.size]
  double? _iconSize;
  double? get iconSize => _iconSize;
  set iconSize(double? iconSize) {
    _iconSize = iconSize;
    notifyListeners();
  }

  /// [MyoroIconTextButtonTextConfiguration.text]
  String _text = faker.lorem.word();
  String get text => _text;
  set text(String text) {
    _text = text;
    notifyListeners();
  }

  /// [MyoroIconTextButtonTextConfiguration.maxLines]
  int _maxLines = MyoroIconTextButtonTextConfiguration.maxLinesDefaultValue;
  int get maxLines => _maxLines;
  set maxLines(int maxLines) {
    _maxLines = maxLines;
    notifyListeners();
  }

  /// [MyoroIconTextButtonTextConfiguration.overflow]
  TextOverflow _overflow = MyoroIconTextButtonTextConfiguration.overflowDefaultValue;
  TextOverflow get overflow => _overflow;
  set overflow(TextOverflow overflow) {
    _overflow = overflow;
    notifyListeners();
  }

  /// [MyoroIconTextButtonTextConfiguration.alignment]
  TextAlign _alignment = MyoroIconTextButtonTextConfiguration.alignmentDefaultValue;
  TextAlign get alignment => _alignment;
  set alignment(TextAlign alignment) {
    _alignment = alignment;
    notifyListeners();
  }

  /// [MyoroIconTextButtonTextConfiguration.style]
  TextStyle? _style;
  TextStyle? get style => _style;
  set style(TextStyle? style) {
    _style = style;
    notifyListeners();
  }
}
