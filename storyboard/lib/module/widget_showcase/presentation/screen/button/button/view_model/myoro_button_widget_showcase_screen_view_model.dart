import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroButtonWidgetShowcaseScreen].
final class MyoroButtonWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroButtonWidgetShowcaseScreenState();
  MyoroButtonWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroButtonConfiguration] of the [MyoroButton].
  MyoroButtonConfiguration configuration(BuildContext context) {
    return MyoroButtonConfiguration(
      tooltipConfiguration: state.tooltipEnabled ? MyoroTooltipConfiguration.fake() : null,
      cursor: state.cursor,
      borderRadius: state.borderRadius,
      backgroundColorBuilder:
          state.backgroundColorBuilderEnabled
              ? (MyoroTapStatusEnum tapStatusEnum) => _backgroundColorBuilder(tapStatusEnum)
              : null,
      borderBuilder:
          state.borderBuilderEnabled ? (MyoroTapStatusEnum tapStatusEnum) => _borderBuilder(tapStatusEnum) : null,
      onTapDown: state.onTapDownEnabled ? (_) => _onTapDown(context) : null,
      onTapUp: state.onTapUpEnabled ? (_) => _onTapUp(context) : null,
    );
  }

  Color _backgroundColorBuilder(MyoroTapStatusEnum tapStatusEnum) {
    return switch (tapStatusEnum) {
      MyoroTapStatusEnum.idle => state.idleBackgroundColor ?? MyoroColorDesignSystem.transparent,
      MyoroTapStatusEnum.hover => state.hoverBackgroundColor ?? MyoroColorDesignSystem.transparent,
      MyoroTapStatusEnum.tap => state.tapBackgroundColor ?? MyoroColorDesignSystem.transparent,
    };
  }

  BoxBorder _borderBuilder(MyoroTapStatusEnum tapStatusEnum) {
    return Border.all(
      width: kMyoroBorderLength,
      color: switch (tapStatusEnum) {
        MyoroTapStatusEnum.idle => state.idleBorderColor ?? MyoroColorDesignSystem.transparent,
        MyoroTapStatusEnum.hover => state.hoverBorderColor ?? MyoroColorDesignSystem.transparent,
        MyoroTapStatusEnum.tap => state.tapBorderColor ?? MyoroColorDesignSystem.transparent,
      },
    );
  }

  void _onTapDown(BuildContext context) {
    context.showSnackBar(
      snackBar: const MyoroSnackBar(
        configuration: MyoroSnackBarConfiguration(
          snackBarType: MyoroSnackBarTypeEnum.attention,
          message: 'Tap down activated.',
        ),
      ),
    );
  }

  void _onTapUp(BuildContext context) {
    context.showSnackBar(
      snackBar: const MyoroSnackBar(
        configuration: MyoroSnackBarConfiguration(
          snackBarType: MyoroSnackBarTypeEnum.attention,
          message: 'Tap up activated.',
        ),
      ),
    );
  }
}
