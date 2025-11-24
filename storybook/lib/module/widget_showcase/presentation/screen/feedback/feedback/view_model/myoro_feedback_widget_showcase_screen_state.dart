part of 'myoro_feedback_widget_showcase_screen_view_model.dart';

/// State of [MyoroFeedbackWidgetShowcaseScreenViewModel].
final class MyoroFeedbackWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroFeedback.icon]
  var _icon = myoroFake<IconData>();

  /// [MyoroFeedback.title]
  var _title = faker.lorem.word();

  /// [MyoroFeedback.subtitle]
  var _subtitle = faker.lorem.sentence();

  /// [MyoroFeedbackStyle.iconStyle]
  MyoroIconStyle? _iconStyle;

  /// [MyoroFeedbackStyle.titleTextStyle]
  MyoroTextStyle? _titleTextStyle;

  /// [MyoroFeedbackStyle.subtitleTextStyle]
  MyoroTextStyle? _subtitleTextStyle;

  /// [MyoroFeedback.actionButtonConfiguration]
  bool _actionButtonConfigurationEnabled = true;

  /// [_icon] getter.
  IconData get icon {
    return _icon;
  }

  /// [_title] getter.
  String get title {
    return _title;
  }

  /// [_subtitle] getter.
  String get subtitle {
    return _subtitle;
  }

  /// [_actionButtonConfigurationEnabled] getter.
  bool get actionButtonConfigurationEnabled {
    return _actionButtonConfigurationEnabled;
  }

  /// [_iconStyle] getter.
  MyoroIconStyle? get iconStyle => _iconStyle;

  /// [_titleTextStyle] getter.
  MyoroTextStyle? get titleTextStyle => _titleTextStyle;

  /// [_subtitleTextStyle] getter.
  MyoroTextStyle? get subtitleTextStyle => _subtitleTextStyle;

  /// [_icon] setter.
  set icon(IconData icon) {
    _icon = icon;
    notifyListeners();
  }

  /// [_title] setter.
  set title(String title) {
    _title = title;
    notifyListeners();
  }

  /// [_subtitle] setter.
  set subtitle(String subtitle) {
    _subtitle = subtitle;
    notifyListeners();
  }

  /// [_actionButtonConfigurationEnabled] setter.
  set actionButtonConfigurationEnabled(bool actionButtonConfigurationEnabled) {
    _actionButtonConfigurationEnabled = actionButtonConfigurationEnabled;
    notifyListeners();
  }

  /// [_iconStyle] setter.
  set iconStyle(MyoroIconStyle? iconStyle) {
    _iconStyle = iconStyle;
    notifyListeners();
  }

  /// [_titleTextStyle] setter.
  set titleTextStyle(MyoroTextStyle? titleTextStyle) {
    _titleTextStyle = titleTextStyle;
    notifyListeners();
  }

  /// [_subtitleTextStyle] setter.
  set subtitleTextStyle(MyoroTextStyle? subtitleTextStyle) {
    _subtitleTextStyle = subtitleTextStyle;
    notifyListeners();
  }
}
