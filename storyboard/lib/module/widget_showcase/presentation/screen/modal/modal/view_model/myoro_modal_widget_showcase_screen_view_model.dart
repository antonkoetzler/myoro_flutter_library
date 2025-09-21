import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroModalWidgetShowcaseScreen].
final class MyoroModalWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroModalWidgetShowcaseScreenState();
  MyoroModalWidgetShowcaseScreenState get state => _state;

  /// Opens the [MyoroModal].
  void showModal(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroModalWidgetShowcaseScreenThemeExtension>();

    !state.isBottomSheet
        ? MyoroModal.showModal(
          context,
          configuration: buildConfiguration(context),
          themeExtension: buildThemeExtension(context),
          child: Image.asset(kHappyCat, width: themeExtension.modalContentImageSize, fit: BoxFit.contain),
        )
        : MyoroModal.showBottomSheet(
          context,
          configuration: buildConfiguration(context),
          themeExtension: buildThemeExtension(context),
          child: Image.asset(kHappyCat, width: themeExtension.modalContentImageSize, fit: BoxFit.contain),
        );
  }

  /// [MyoroModalConfiguration] of the [MyoroModal].
  MyoroModalConfiguration buildConfiguration(BuildContext context) {
    return MyoroModalConfiguration(
      barrierDismissable: _state.barrierDismissable,
      useRootNavigator: _state.useRootNavigator,
      onClosed: _state.onClosedEnabled ? (_) => onClosed(context) : null,
      title: _state.title,
      showCloseButton: _state.showCloseButton,
    );
  }

  /// [MyoroModalThemeExtension] of the [MyoroModal].
  MyoroModalThemeExtension buildThemeExtension(BuildContext context) {
    final modalThemeExtension = MyoroModalThemeExtension.builder(context.colorScheme, context.textTheme);

    return modalThemeExtension.copyWith(
      constraints: _state.constraints,
      primaryColor: _state.primaryColor,
      borderRadius: _state.borderRadius,
      bottomSheetBorderRadius: _state.bottomSheetBorderRadius,
      border: _state.border,
      bottomSheetBorder: _state.bottomSheetBorder,
      padding: _state.padding,
      closeButtonPadding: _state.closeButtonPadding,
      spacing: _state.spacing,
      titleTextStyle: _state.titleTextStyle,
      closeButtonIconConfiguration: _state.closeButtonIconConfiguration,
    );
  }

  // [MyoroModalConfiguration.onClosed]
  void onClosed(BuildContext context) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(
        configuration: MyoroSnackBarConfiguration(
          snackBarType: MyoroSnackBarTypeEnum.attention,
          message: '${!_state.isBottomSheet ? 'Modal' : 'Bottom sheet'} closed!',
        ),
      ),
    );
  }
}
