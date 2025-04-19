import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Text configuration of [MyoroIconTextButton].
class MyoroIconTextButtonTextConfiguration extends Equatable {
  /// [Text.data]
  final String text;

  /// [Text.maxLines]
  final int maxLines;

  /// [Text.overflow]
  final TextOverflow overflow;

  /// [Text.textAlign]
  final TextAlign alignment;

  /// [Text.style]
  final TextStyle? style;

  const MyoroIconTextButtonTextConfiguration({
    required this.text,
    this.maxLines = 1,
    this.overflow = TextOverflow.ellipsis,
    this.alignment = TextAlign.center,
    this.style,
  }) : assert(
         text.length != 0,
         '[MyoroIconTextButtonTextConfiguration]: [text] cannot be empty.',
       );

  MyoroIconTextButtonTextConfiguration copyWith({
    String? text,
    int? maxLines,
    TextOverflow? overflow,
    TextAlign? alignment,
    TextStyle? style,
    bool styleProvided = true,
  }) {
    return MyoroIconTextButtonTextConfiguration(
      text: text ?? this.text,
      maxLines: maxLines ?? this.maxLines,
      overflow: overflow ?? this.overflow,
      alignment: alignment ?? this.alignment,
      style: styleProvided ? (style ?? this.style) : null,
    );
  }

  @override
  List<Object?> get props {
    return [text, maxLines, overflow, alignment, style];
  }

  @override
  String toString() =>
      'MyoroIconTextButtonTextConfiguration(\n'
      '  text: $text,\n'
      '  maxLines: $maxLines,\n'
      '  overflow: $overflow,\n'
      '  alignment: $alignment,\n'
      '  style: $style,\n'
      ');';
}
