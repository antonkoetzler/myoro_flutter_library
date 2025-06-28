import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroIconTextButtonWidgetShowcaseScreen].
final class MyoroIconTextButtonWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroIconTextButtonWidgetShowcaseScreenState();
  MyoroIconTextButtonWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroIconTextButtonConfiguration] of the [MyoroIconTextButton].
  MyoroIconTextButtonConfiguration configuration(BuildContext context) {
    return MyoroIconTextButtonConfiguration(
      buttonConfiguration: _state.buttonViewModel.configuration(context),
      invert: _state.invert,
      spacing: _state.spacing,
      padding: _state.padding,
      contentColorBuilder:
          _state.enableContentColorBuilder ? (tapStatusEnum) => _contentColorBuilder(tapStatusEnum) : null,
      iconConfiguration: _state.icon != null ? MyoroIconConfiguration(icon: _state.icon!, size: _state.iconSize) : null,
      textConfiguration:
          _state.text.isNotEmpty
              ? MyoroTextConfiguration(
                text: _state.text,
                maxLines: _state.maxLines,
                overflow: _state.overflow,
                alignment: _state.alignment,
                style: _state.style,
              )
              : null,
    );
  }

  /// [MyoroIconTextButtonConfiguration.contentColorBuilder] of [_Widget].
  Color _contentColorBuilder(MyoroTapStatusEnum tapStatusEnum) {
    return switch (tapStatusEnum) {
          MyoroTapStatusEnum.idle => state.idleContentColor,
          MyoroTapStatusEnum.hover => state.hoverContentColor,
          MyoroTapStatusEnum.tap => state.tapContentColor,
        } ??
        MyoroColorDesignSystem.transparent;
  }
}
