import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// State of [MyoroIconTextButtonWidgetShowcaseScreenViewModel].
final class MyoroIconTextButtonWidgetShowcaseScreenState extends ChangeNotifier {
  /// View model of [MyoroButtonWidgetShowcaseScreenViewModel].
  final _buttonViewModel = MyoroButtonWidgetShowcaseScreenViewModel();
  MyoroButtonWidgetShowcaseScreenViewModel get buttonViewModel => _buttonViewModel;

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
    if (_spacing == spacing) return;
    _spacing = spacing;
    notifyListeners();
  }

  /// [MyoroIconTextButtonConfiguration.padding]
  EdgeInsets? _padding;
  EdgeInsets? get padding => _padding;
  set padding(EdgeInsets? padding) {
    if (_padding == padding) return;
    _padding = padding;
    notifyListeners();
  }

  /// If [MyoroIconTextButtonConfiguration.contentColorBuilder] is enabled.
  bool _enableContentColorBuilder = false;
  bool get enableContentColorBuilder => _enableContentColorBuilder;
  set enableContentColorBuilder(bool enableContentColorBuilder) {
    if (_enableContentColorBuilder == enableContentColorBuilder) return;
    _enableContentColorBuilder = enableContentColorBuilder;
    notifyListeners();
  }

  /// [MyoroIconTextButtonConfiguration.contentColorBuilder]'s [Color] of [MyoroTapStatusEnum.idle].
  Color? _idleContentColor;
  Color? get idleContentColor => _idleContentColor;
  set idleContentColor(Color? idleContentColor) {
    if (_idleContentColor == idleContentColor) return;
    _idleContentColor = idleContentColor;
    notifyListeners;
  }

  /// [MyoroIconTextButtonConfiguration.contentColorBuilder]'s [Color] of [MyoroTapStatusEnum.hover].
  Color? _hoverContentColor;
  Color? get hoverContentColor => _hoverContentColor;
  set hoverContentColor(Color? hoverContentColor) {
    if (_hoverContentColor == hoverContentColor) return;
    _hoverContentColor = hoverContentColor;
    notifyListeners();
  }

  /// [MyoroIconTextButtonConfiguration.contentColorBuilder]'s [Color] of [MyoroTapStatusEnum.tap].
  Color? _tapContentColor;
  Color? get tapContentColor => _tapContentColor;
  set tapContentColor(Color? tapContentColor) {
    if (_tapContentColor == tapContentColor) return;
    _tapContentColor = tapContentColor;
    notifyListeners();
  }

  /// [MyoroIconTextButtonIconConfiguration.icon]
  IconData? _icon = myoroFake<IconData>();
  IconData? get icon => _icon;
  set icon(IconData? icon) {
    if (_icon == icon) return;
    if (_icon == null && _text.isEmpty) _text = faker.lorem.word();
    _icon = icon;
    notifyListeners();
  }

  /// [MyoroIconTextButtonIconConfiguration.size]
  double? _iconSize;
  double? get iconSize => _iconSize;
  set iconSize(double? iconSize) {
    if (_iconSize == iconSize) return;
    _iconSize = iconSize;
    notifyListeners();
  }

  /// [MyoroTextConfiguration.text]
  String _text = faker.lorem.word();
  String get text => _text;
  set text(String text) {
    if (_text == text) return;
    if (_icon == null && _text.isEmpty) _icon = myoroFake<IconData>();
    _text = text;
    notifyListeners();
  }

  /// [MyoroTextConfiguration.maxLines]
  int _maxLines = MyoroTextConfiguration.maxLinesDefaultValue;
  int get maxLines => _maxLines;
  set maxLines(int maxLines) {
    if (_maxLines == maxLines) return;
    _maxLines = maxLines;
    notifyListeners();
  }

  /// [MyoroTextConfiguration.overflow]
  TextOverflow _overflow = MyoroTextConfiguration.overflowDefaultValue;
  TextOverflow get overflow => _overflow;
  set overflow(TextOverflow overflow) {
    if (_overflow == overflow) return;
    _overflow = overflow;
    notifyListeners();
  }

  /// [MyoroTextConfiguration.alignment]
  TextAlign _alignment = MyoroTextConfiguration.alignmentDefaultValue;
  TextAlign get alignment => _alignment;
  set alignment(TextAlign alignment) {
    if (_alignment == alignment) return;
    _alignment = alignment;
    notifyListeners();
  }

  /// [MyoroTextConfiguration.style]
  TextStyle? _style;
  TextStyle? get style => _style;
  set style(TextStyle? style) {
    if (_style == style) return;
    _style = style;
    notifyListeners();
  }

  /// Dispose function.
  @override
  void dispose() {
    _buttonViewModel.dispose();
    super.dispose();
  }
}
