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

  /// [MyoroFeedbackConfiguration.titleConfiguration]
  var _titleConfiguration = MyoroTextConfiguration(text: faker.lorem.word());
  MyoroTextConfiguration get titleConfiguration => _titleConfiguration;
  set titleConfiguration(MyoroTextConfiguration titleConfiguration) {
    _titleConfiguration = titleConfiguration;
    notifyListeners();
  }

  /// [MyoroFeedbackConfiguration subtitleConfiguration]
  MyoroTextConfiguration? _subtitleConfiguration = MyoroTextConfiguration(text: faker.lorem.sentence());
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
