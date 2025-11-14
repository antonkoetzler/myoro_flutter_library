import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_action_button.dart';
part '../_widget/_icon.dart';
part '../_widget/_subtitle.dart';
part '../_widget/_title.dart';

/// An a generic feedback [Widget].
class MyoroFeedback extends StatelessWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroFeedbackStyle();

  /// Default value of [title].
  static const titleDefaultValue = kMyoroEmptyString;

  /// Default value of [subtitle].
  static const subtitleDefaultValue = kMyoroEmptyString;

  /// Default value of [actionButtonText].
  static const actionButtonTextDefaultValue = kMyoroEmptyString;

  const MyoroFeedback({
    super.key,
    this.style = styleDefaultValue,
    required this.iconConfiguration,
    this.title = titleDefaultValue,
    this.titleConfiguration,
    this.subtitle = subtitleDefaultValue,
    this.subtitleConfiguration,
    this.actionButtonText = actionButtonTextDefaultValue,
    this.actionButtonConfiguration,
  });

  /// Style.
  final MyoroFeedbackStyle style;

  /// [IconData] of the [MyoroFeedback].
  final MyoroIconConfiguration iconConfiguration;

  /// Title of the [MyoroFeedback].
  final String title;

  /// Title of the [MyoroFeedback].
  final MyoroTextConfiguration? titleConfiguration;

  /// Subtitle of the [MyoroFeedback].
  final String subtitle;

  /// Subtitle of the [MyoroFeedback].
  final MyoroTextConfiguration? subtitleConfiguration;

  /// Action button text.
  final String actionButtonText;

  /// Action button configuration.
  final MyoroFeedbackActionButtonConfiguration? actionButtonConfiguration;

  @override
  Widget build(context) {
    final style = this.style;
    final spacing = style.spacing ?? 0;

    return Provider.value(
      value: style,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Column(
              spacing: spacing,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _Icon(iconConfiguration),
                      _Title(title, titleConfiguration),
                      if (subtitleConfiguration != null) _Subtitle(subtitle, subtitleConfiguration!),
                    ],
                  ),
                ),
                if (actionButtonText.isNotEmpty) _ActionButton(actionButtonText, actionButtonConfiguration),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
