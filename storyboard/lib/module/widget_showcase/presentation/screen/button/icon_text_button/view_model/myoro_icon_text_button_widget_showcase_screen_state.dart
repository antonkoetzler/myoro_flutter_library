import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// State of [MyoroIconTextButtonWidgetShowcaseScreenViewModel].
final class MyoroIconTextButtonWidgetShowcaseScreenState extends ChangeNotifier {
  /// View model of [MyoroButtonWidgetShowcaseScreenViewModel].
  final _buttonViewModel = MyoroButtonWidgetShowcaseScreenViewModel();

  /// [_buttonViewModel] getter.
  MyoroButtonWidgetShowcaseScreenViewModel get buttonViewModel => _buttonViewModel;

  /// [MyoroIconTextButtonConfiguration.invert]
  bool _invert = MyoroIconTextButtonConfiguration.invertDefaultValue;

  /// [_invert] getter.
  bool get invert => _invert;

  /// [_invert] setter.
  set invert(bool invert) {
    _invert = invert;
    notifyListeners();
  }

  /// [MyoroIconTextButtonConfiguration.spacing]
  double? _spacing;

  /// [_spacing] getter.
  double? get spacing => _spacing;

  /// [_spacing] setter.
  set spacing(double? spacing) {
    if (_spacing == spacing) return;
    _spacing = spacing;
    notifyListeners();
  }

  /// [MyoroIconTextButtonConfiguration.padding]
  EdgeInsets? _padding;

  /// [_padding] getter.
  EdgeInsets? get padding => _padding;

  /// [_padding] setter.
  set padding(EdgeInsets? padding) {
    if (_padding == padding) return;
    _padding = padding;
    notifyListeners();
  }

  /// If [MyoroIconTextButtonConfiguration.contentColorBuilder] is enabled.
  bool _enableContentColorBuilder = false;

  /// [_enableContentColorBuilder] getter.
  bool get enableContentColorBuilder => _enableContentColorBuilder;

  /// [_enableContentColorBuilder] setter.
  set enableContentColorBuilder(bool enableContentColorBuilder) {
    if (_enableContentColorBuilder == enableContentColorBuilder) return;
    _enableContentColorBuilder = enableContentColorBuilder;
    notifyListeners();
  }

  /// [MyoroIconTextButtonConfiguration.contentColorBuilder]'s [Color] of [MyoroTapStatusEnum.idle].
  Color? _idleContentColor;

  /// [_idleContentColor] getter.
  Color? get idleContentColor => _idleContentColor;

  /// [_idleContentColor] setter.
  set idleContentColor(Color? idleContentColor) {
    if (_idleContentColor == idleContentColor) return;
    _idleContentColor = idleContentColor;
    notifyListeners;
  }

  /// [MyoroIconTextButtonConfiguration.contentColorBuilder]'s [Color] of [MyoroTapStatusEnum.hover].
  Color? _hoverContentColor;

  /// [_hoverContentColor] getter.
  Color? get hoverContentColor => _hoverContentColor;

  /// [_hoverContentColor] setter.
  set hoverContentColor(Color? hoverContentColor) {
    if (_hoverContentColor == hoverContentColor) return;
    _hoverContentColor = hoverContentColor;
    notifyListeners();
  }

  /// [MyoroIconTextButtonConfiguration.contentColorBuilder]'s [Color] of [MyoroTapStatusEnum.tap].
  Color? _tapContentColor;

  /// [_tapContentColor] getter.
  Color? get tapContentColor => _tapContentColor;

  /// [_tapContentColor] setter.
  set tapContentColor(Color? tapContentColor) {
    if (_tapContentColor == tapContentColor) return;
    _tapContentColor = tapContentColor;
    notifyListeners();
  }

  /// [MyoroIconTextButtonIconConfiguration.icon]
  IconData? _icon = myoroFake<IconData>();

  /// [_icon] getter.
  IconData? get icon => _icon;

  /// [_icon] setter.
  set icon(IconData? icon) {
    if (_icon == icon) return;
    if (_icon == null && _text.isEmpty) _text = faker.lorem.word();
    _icon = icon;
    notifyListeners();
  }

  /// [MyoroIconTextButtonIconConfiguration.size]
  double? _iconSize;

  /// [_iconSize] getter.
  double? get iconSize => _iconSize;

  /// [_iconSize] setter.
  set iconSize(double? iconSize) {
    if (_iconSize == iconSize) return;
    _iconSize = iconSize;
    notifyListeners();
  }

  /// [MyoroTextConfiguration.text]
  String _text = faker.lorem.word();

  /// [_text] getter.
  String get text => _text;

  /// [_text] setter.
  set text(String text) {
    if (_text == text) return;
    if (_icon == null && _text.isEmpty) _icon = myoroFake<IconData>();
    _text = text;
    notifyListeners();
  }

  /// [MyoroTextConfiguration.maxLines]
  int _maxLines = MyoroTextConfiguration.maxLinesDefaultValue;

  /// [_maxLines] getter.
  int get maxLines => _maxLines;

  /// [_maxLines] setter.
  set maxLines(int maxLines) {
    if (_maxLines == maxLines) return;
    _maxLines = maxLines;
    notifyListeners();
  }

  /// [MyoroTextConfiguration.overflow]
  TextOverflow _overflow = MyoroTextConfiguration.overflowDefaultValue;

  /// [_overflow] getter.
  TextOverflow get overflow => _overflow;

  /// [_overflow] setter.
  set overflow(TextOverflow overflow) {
    if (_overflow == overflow) return;
    _overflow = overflow;
    notifyListeners();
  }

  /// [MyoroTextConfiguration.alignment]
  TextAlign _alignment = MyoroTextConfiguration.alignmentDefaultValue;

  /// [_alignment] getter.
  TextAlign get alignment => _alignment;

  /// [_alignment] setter.
  set alignment(TextAlign alignment) {
    if (_alignment == alignment) return;
    _alignment = alignment;
    notifyListeners();
  }

  /// [MyoroTextConfiguration.style]
  TextStyle? _style;

  /// [_style] getter.
  TextStyle? get style => _style;

  /// [_style] setter.
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
