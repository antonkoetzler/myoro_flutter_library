import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

part 'myoro_feedback_widget_showcase_screen_state.dart';

/// View model of [MyoroFeedbackWidgetShowcaseScreen].
final class MyoroFeedbackWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroFeedbackWidgetShowcaseScreenState();
  MyoroFeedbackWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Creates the [MyoroFeedbackConfiguration].
  MyoroFeedbackConfiguration get configuration {
    return MyoroFeedbackConfiguration(
      iconConfiguration: _state.iconConfiguration,
      titleConfiguration: _state.titleConfiguration,
      subtitleConfiguration: _state.subtitleConfiguration,
      actionButtonConfiguration:
          _state.actionButtonConfigurationEnabled
              ? MyoroFeedbackActionButtonConfiguration(
                textConfiguration: const MyoroTextConfiguration(text: 'Action button'),
                onTapUp: (_) {},
              )
              : null,
    );
  }

  /// [IconWidgetShowcaseOptionConfiguration.iconOnChanged]
  /// of [MyoroFeedbackWidgetShowcaseScreenState.iconConfiguration].
  void iconConfigurationIconOnChanged(IconData? icon) {
    _state.iconConfiguration = _state.iconConfiguration.copyWith(icon: icon);
  }

  /// [IconWidgetShowcaseOptionConfiguration.iconSizeOnChanged]
  /// of [MyoroFeedbackWidgetShowcaseScreenState.iconConfiguration].
  void iconConfigurationSizeOnChanged(double? size) {
    _state.iconConfiguration = _state.iconConfiguration.copyWith(size: size, sizeProvided: size != null);
  }

  /// [IconWidgetShowcaseOptionConfiguration.iconOnChanged]
  /// of [MyoroFeedbackWidgetShowcaseScreenState.iconConfiguration].
  void iconConfigurationSizeCheckboxOnChanged(bool enabled, double? size) {
    _state.iconConfiguration = _state.iconConfiguration.copyWith(size: size, sizeProvided: enabled);
  }

  /// [TextWidgetShowcaseOptionConfiguration.textOnChanged]
  /// of [MyoroFeedbackWidgetShowcaseScreenState.titleConfiguration].
  void titleConfigurationTextOnChanged(String text) {
    _state.titleConfiguration = _state.titleConfiguration.copyWith(text: text);
  }

  /// [TextWidgetShowcaseOptionConfiguration.maxLinesOnChanged]
  /// of [MyoroFeedbackWidgetShowcaseScreenState.titleConfiguration].
  void titleConfigurationMaxLinesOnChanged(int? maxLines) {
    _state.titleConfiguration = _state.titleConfiguration.copyWith(maxLines: maxLines);
  }

  /// [TextWidgetShowcaseOptionConfiguration.overflowOnChanged]
  /// of [MyoroFeedbackWidgetShowcaseScreenState.titleConfiguration].
  void titleConfigurationOverflowOnChanged(TextOverflow? overflow) {
    _state.titleConfiguration = _state.titleConfiguration.copyWith(overflow: overflow);
  }

  /// [TextWidgetShowcaseOptionConfiguration.alignmentOnChanged]
  /// of [MyoroFeedbackWidgetShowcaseScreenState.titleConfiguration].
  void titleConfigurationAlignmentOnChanged(TextAlign? alignment) {
    _state.titleConfiguration = _state.titleConfiguration.copyWith(alignment: alignment);
  }

  /// [TextWidgetShowcaseOptionConfiguration.textOnChanged]
  /// of [MyoroFeedbackWidgetShowcaseScreenState.subtitleConfiguration].
  void subtitleConfigurationTextOnChanged(String text) {
    _state.subtitleConfiguration = _state.subtitleConfiguration?.copyWith(text: text);
  }

  /// [TextWidgetShowcaseOptionConfiguration.maxLinesOnChanged]
  /// of [MyoroFeedbackWidgetShowcaseScreenState.subtitleConfiguration].
  void subtitleConfigurationMaxLinesOnChanged(int? maxLines) {
    _state.subtitleConfiguration = _state.subtitleConfiguration?.copyWith(maxLines: maxLines);
  }

  /// [TextWidgetShowcaseOptionConfiguration.overflowOnChanged]
  /// of [MyoroFeedbackWidgetShowcaseScreenState.subtitleConfiguration].
  void subtitleConfigurationOverflowOnChanged(TextOverflow? overflow) {
    _state.subtitleConfiguration = _state.subtitleConfiguration?.copyWith(overflow: overflow);
  }

  /// [TextWidgetShowcaseOptionConfiguration.alignmentOnChanged]
  /// of [MyoroFeedbackWidgetShowcaseScreenState.subtitleConfiguration].
  void subtitleConfigurationAlignmentOnChanged(TextAlign? alignment) {
    _state.subtitleConfiguration = _state.subtitleConfiguration?.copyWith(alignment: alignment);
  }
}
