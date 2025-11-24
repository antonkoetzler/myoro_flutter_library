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
    this.icon,
    this.title = titleDefaultValue,
    this.subtitle = subtitleDefaultValue,
    this.actionButtonIcon,
    this.actionButtonText = actionButtonTextDefaultValue,
    this.actionButtonConfiguration,
  });

  /// Style.
  final MyoroFeedbackStyle style;

  /// [IconData] of the [MyoroFeedback].
  final IconData? icon;

  /// Title of the [MyoroFeedback].
  final String title;

  /// Subtitle of the [MyoroFeedback].
  final String subtitle;

  /// Action button icon.
  final IconData? actionButtonIcon;

  /// Action button text.
  final String actionButtonText;

  /// Action button configuration.
  final MyoroFeedbackActionButtonConfiguration? actionButtonConfiguration;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFeedbackThemeExtension>();
    final spacing = style.spacing ?? themeExtension.spacing ?? 0;

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
                      if (icon != null) _Icon(icon!),
                      _Title(title),
                      if (subtitle.isNotEmpty) _Subtitle(subtitle),
                    ],
                  ),
                ),
                if (actionButtonText.isNotEmpty)
                  _ActionButton(actionButtonIcon, actionButtonText, actionButtonConfiguration),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
