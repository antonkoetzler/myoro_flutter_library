import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Model to store the configuration members of [MyoroModal] that
/// may be altered within other modals to not repeat the members.
final class MyoroModalConfiguration extends Equatable {
  /// If you click everywhere but the modal, it closes
  final bool? barrierDismissable;

  /// Constraints of the modal.
  final BoxConstraints? constraints;

  /// Function executed when the modal is closed.
  final VoidCallback? onClosed;

  /// Title of the modal.
  final String? title;

  /// If [_CloseButton] will be shown.
  final bool? showCloseButton;

  const MyoroModalConfiguration({
    this.barrierDismissable,
    this.constraints,
    this.onClosed,
    this.title,
    this.showCloseButton,
  });

  MyoroModalConfiguration.fake()
      : barrierDismissable = faker.randomGenerator.boolean(),
        constraints = null,
        onClosed = null,
        title = faker.lorem.word(),
        showCloseButton = faker.randomGenerator.boolean();

  MyoroModalConfiguration copyWith({
    bool? barrierDismissable,
    BoxConstraints? constraints,
    VoidCallback? onClosed,
    String? title,
    bool? showCloseButton,
  }) {
    return MyoroModalConfiguration(
      barrierDismissable: barrierDismissable ?? this.barrierDismissable,
      constraints: constraints ?? this.constraints,
      onClosed: onClosed ?? this.onClosed,
      title: title ?? this.title,
      showCloseButton: showCloseButton ?? this.showCloseButton,
    );
  }

  @override
  String toString() => ''
      'MyoroModalConfiguration(\n'
      '  barrierDismissable: $barrierDismissable,\n'
      '  constraints: $constraints,\n'
      '  onClosed: $onClosed,\n'
      '  title: $title,\n'
      '  showCloseButton: $showCloseButton,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      barrierDismissable,
      constraints,
      onClosed,
      title,
      showCloseButton,
    ];
  }
}
