import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration of [MyoroDrawer].
class MyoroDrawerConfiguration extends Equatable {
  static const showCloseButtonDefaultValue = true;
  static const barrierDismissableDefaultValue = true;

  /// Title of the drawer.
  final String? title;

  /// [TextStyle] of the text in [_Header].
  final TextStyle? titleTextStyle;

  /// Whether or not to show the close button.
  final bool showCloseButton;

  /// Whether or not clicking anywhere but the drawer will close the drawer.
  final bool barrierDismissable;

  /// Content of the drawer.
  final Widget child;

  const MyoroDrawerConfiguration({
    this.title,
    this.titleTextStyle,
    this.showCloseButton = showCloseButtonDefaultValue,
    this.barrierDismissable = barrierDismissableDefaultValue,
    required this.child,
  });

  MyoroDrawerConfiguration.fake()
    : title = faker.randomGenerator.boolean() ? faker.lorem.word() : null,
      titleTextStyle = faker.randomGenerator.boolean() ? MyoroTypographyDesignSystem.instance.randomTextStyle : null,
      showCloseButton = faker.randomGenerator.boolean(),
      barrierDismissable = faker.randomGenerator.boolean(),
      child = const SizedBox.shrink();

  MyoroDrawerConfiguration copyWith({
    String? title,
    bool titleProvided = true,
    TextStyle? titleTextStyle,
    bool titleTextStyleProvided = true,
    bool? showCloseButton,
    bool? barrierDismissable,
    Widget? child,
  }) {
    return MyoroDrawerConfiguration(
      title: titleProvided ? (title ?? this.title) : null,
      titleTextStyle: titleTextStyleProvided ? (titleTextStyle ?? this.titleTextStyle) : null,
      showCloseButton: showCloseButton ?? this.showCloseButton,
      barrierDismissable: barrierDismissable ?? this.barrierDismissable,
      child: child ?? this.child,
    );
  }

  @override
  List<Object?> get props {
    return [title, titleTextStyle, showCloseButton, barrierDismissable, child];
  }

  @override
  String toString() =>
      'MyoroDrawerConfiguration(\n'
      '  title: $title,\n'
      '  titleTextStyle: $titleTextStyle,\n'
      '  showCloseButton: $showCloseButton,\n'
      '  barrierDismissable: $barrierDismissable,\n'
      '  child: $child,\n'
      ');';
}
