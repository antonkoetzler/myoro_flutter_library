part of 'myoro_feedback_widget_showcase_screen_view_model.dart';

/// State of [MyoroFeedbackWidgetShowcaseScreenViewModel].
final class MyoroFeedbackWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroFeedbackConfiguration.iconConfiguration]
  var _iconConfiguration = MyoroIconConfiguration(icon: myoroFake<IconData>());
  MyoroIconConfiguration get iconConfiguration => _iconConfiguration;
  set iconConfiguration(MyoroIconConfiguration iconConfiguration) {
    _iconConfiguration = iconConfiguration;
    notifyListeners();
  }

  /// [MyoroFeedback.title]
  var _title = faker.lorem.word();
  String get title => _title;
  set title(String title) {
    _title = title;
    notifyListeners();
  }

  /// [MyoroFeedbackConfiguration.titleConfiguration]
  var _titleConfiguration = const MyoroTextConfiguration();
  MyoroTextConfiguration get titleConfiguration => _titleConfiguration;
  set titleConfiguration(MyoroTextConfiguration titleConfiguration) {
    _titleConfiguration = titleConfiguration;
    notifyListeners();
  }

  /// [MyoroFeedback.subtitle]
  var _subtitle = faker.lorem.sentence();
  String get subtitle => _subtitle;
  set subtitle(String subtitle) {
    _subtitle = subtitle;
    notifyListeners();
  }

  /// [MyoroFeedbackConfiguration subtitleConfiguration]
  MyoroTextConfiguration? _subtitleConfiguration = const MyoroTextConfiguration();
  MyoroTextConfiguration? get subtitleConfiguration => _subtitleConfiguration;
  set subtitleConfiguration(MyoroTextConfiguration? subtitleConfiguration) {
    _subtitleConfiguration = subtitleConfiguration;
    notifyListeners();
  }

  /// [MyoroFeedbackConfiguration actionButtonConfiguration]
  bool _actionButtonConfigurationEnabled = true;
  bool get actionButtonConfigurationEnabled => _actionButtonConfigurationEnabled;
  set actionButtonConfigurationEnabled(bool actionButtonConfigurationEnabled) {
    _actionButtonConfigurationEnabled = actionButtonConfigurationEnabled;
    notifyListeners();
  }
}
