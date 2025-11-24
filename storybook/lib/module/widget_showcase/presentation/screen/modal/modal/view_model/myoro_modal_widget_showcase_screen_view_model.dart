import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// View model of [MyoroModalWidgetShowcaseScreen].
final class MyoroModalWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroModalWidgetShowcaseScreenState();
  MyoroModalWidgetShowcaseScreenState get state => _state;

  /// Opens the [MyoroModal].
  void showModal(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroModalWidgetShowcaseScreenThemeExtension>();
    MyoroModal.show(
      context,
      isBottomSheet: state.isBottomSheet,
      style: style,
      barrierDismissable: _state.barrierDismissable,
      useRootNavigator: _state.useRootNavigator,
      title: _state.title,
      showCloseButton: _state.showCloseButton,
      child: Image.asset(kHappyCat, width: themeExtension.modalContentImageSize, fit: BoxFit.contain),
    );
  }

  /// [MyoroModalThemeExtension] of the [MyoroModal].
  MyoroModalStyle get style {
    return MyoroModalStyle(
      constraints: _state.constraints,
      primaryColor: _state.primaryColor,
      borderRadius: _state.borderRadius,
      border: _state.border,
      closeButtonPadding: _state.closeButtonPadding,
      spacing: _state.spacing,
      titleTextStyle: _state.titleTextStyle,
      closeButtonIcon: _state.closeButtonIcon,
      closeButtonIconSize: _state.closeButtonIconSize,
    );
  }
}
