import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// State of [MyoroIconTextButtonWidgetShowcaseScreenViewModel].
final class MyoroIconTextButtonWidgetShowcaseScreenState extends ChangeNotifier {
  /// View model of [MyoroButtonWidgetShowcaseScreenViewModel].
  final _buttonViewModel = MyoroButtonWidgetShowcaseScreenViewModel();

  /// [MyoroIconTextButtonConfiguration.invert]
  bool _invert = false;

  /// [MyoroIconTextButtonConfiguration.spacing]
  double? _spacing;

  /// [MyoroIconTextButtonConfiguration.padding]
  EdgeInsets? _padding;

  /// If [MyoroIconTextButtonConfiguration.contentColorBuilder] is enabled.
  bool _enableContentColorBuilder = false;

  /// [MyoroIconTextButtonConfiguration.contentColorBuilder]'s [Color] of [MyoroTapStatusEnum.idle].
  Color? _idleContentColor;

  /// [MyoroIconTextButtonConfiguration.contentColorBuilder]'s [Color] of [MyoroTapStatusEnum.hover].
  Color? _hoverContentColor;

  /// [MyoroIconTextButtonConfiguration.contentColorBuilder]'s [Color] of [MyoroTapStatusEnum.tap].
  Color? _tapContentColor;

  /// [MyoroIconTextButtonIconConfiguration.icon]
  IconData? _icon = myoroFake<IconData>();

  /// [MyoroIconTextButtonIconConfiguration.size]
  double? _iconSize;

  /// [MyoroTextStyle.text]
  String _text = faker.lorem.word();

  /// [MyoroTextStyle.maxLines]
  int _maxLines = MyoroTextStyle.maxLinesDefaultValue;

  /// [MyoroTextStyle.overflow]
  TextOverflow _overflow = MyoroTextStyle.overflowDefaultValue;

  /// [MyoroTextStyle.alignment]
  TextAlign _alignment = MyoroTextStyle.alignmentDefaultValue;

  /// [MyoroTextStyle.style]
  TextStyle? _style;

  /// Dispose function.
  @override
  void dispose() {
    _buttonViewModel.dispose();
    super.dispose();
  }

  /// [_buttonViewModel] getter.
  MyoroButtonWidgetShowcaseScreenViewModel get buttonViewModel => _buttonViewModel;

  /// [_invert] getter.
  bool get invert => _invert;

  /// [_spacing] getter.
  double? get spacing => _spacing;

  /// [_padding] getter.
  EdgeInsets? get padding => _padding;

  /// [_enableContentColorBuilder] getter.
  bool get enableContentColorBuilder => _enableContentColorBuilder;

  /// [_idleContentColor] getter.
  Color? get idleContentColor => _idleContentColor;

  /// [_hoverContentColor] getter.
  Color? get hoverContentColor => _hoverContentColor;

  /// [_tapContentColor] getter.
  Color? get tapContentColor => _tapContentColor;

  /// [_icon] getter.
  IconData? get icon => _icon;

  /// [_iconSize] getter.
  double? get iconSize => _iconSize;

  /// [_text] getter.
  String get text => _text;

  /// [_maxLines] getter.
  int get maxLines => _maxLines;

  /// [_overflow] getter.
  TextOverflow get overflow => _overflow;

  /// [_alignment] getter.
  TextAlign get alignment => _alignment;

  /// [_style] getter.
  TextStyle? get style => _style;

  /// [_invert] setter.
  set invert(bool invert) {
    _invert = invert;
    notifyListeners();
  }

  /// [_spacing] setter.
  set spacing(double? spacing) {
    if (_spacing == spacing) return;
    _spacing = spacing;
    notifyListeners();
  }

  /// [_padding] setter.
  set padding(EdgeInsets? padding) {
    if (_padding == padding) return;
    _padding = padding;
    notifyListeners();
  }

  /// [_enableContentColorBuilder] setter.
  set enableContentColorBuilder(bool enableContentColorBuilder) {
    if (_enableContentColorBuilder == enableContentColorBuilder) return;
    _enableContentColorBuilder = enableContentColorBuilder;
    notifyListeners();
  }

  /// [_idleContentColor] setter.
  set idleContentColor(Color? idleContentColor) {
    if (_idleContentColor == idleContentColor) return;
    _idleContentColor = idleContentColor;
    notifyListeners();
  }

  /// [_hoverContentColor] setter.
  set hoverContentColor(Color? hoverContentColor) {
    if (_hoverContentColor == hoverContentColor) return;
    _hoverContentColor = hoverContentColor;
    notifyListeners();
  }

  /// [_tapContentColor] setter.
  set tapContentColor(Color? tapContentColor) {
    if (_tapContentColor == tapContentColor) return;
    _tapContentColor = tapContentColor;
    notifyListeners();
  }

  /// [_icon] setter.
  set icon(IconData? icon) {
    if (_icon == icon) return;
    if (_icon == null && _text.isEmpty) _text = faker.lorem.word();
    _icon = icon;
    notifyListeners();
  }

  /// [_iconSize] setter.
  set iconSize(double? iconSize) {
    if (_iconSize == iconSize) return;
    _iconSize = iconSize;
    notifyListeners();
  }

  /// [_text] setter.
  set text(String text) {
    if (_text == text) return;
    if (_icon == null && _text.isEmpty) _icon = myoroFake<IconData>();
    _text = text;
    notifyListeners();
  }

  /// [_maxLines] setter.
  set maxLines(int maxLines) {
    if (_maxLines == maxLines) return;
    _maxLines = maxLines;
    notifyListeners();
  }

  /// [_overflow] setter.
  set overflow(TextOverflow overflow) {
    if (_overflow == overflow) return;
    _overflow = overflow;
    notifyListeners();
  }

  /// [_alignment] setter.
  set alignment(TextAlign alignment) {
    if (_alignment == alignment) return;
    _alignment = alignment;
    notifyListeners();
  }

  /// [_style] setter.
  set style(TextStyle? style) {
    if (_style == style) return;
    _style = style;
    notifyListeners();
  }
}
