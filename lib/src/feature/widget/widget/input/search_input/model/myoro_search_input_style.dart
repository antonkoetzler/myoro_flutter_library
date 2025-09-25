import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_search_input_style.g.dart';

/// Style model of [MyoroSearchInput].
@immutable
@myoroModel
class MyoroSearchInputStyle with _$MyoroSearchInputStyleMixin {
  const MyoroSearchInputStyle({this.spacing, this.searchButtonIcon, this.searchButtonLoadingSize});

  // coverage:ignore-start
  factory MyoroSearchInputStyle.fake() {
    return MyoroSearchInputStyle(
      spacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      searchButtonIcon: faker.randomGenerator.boolean() ? myoroFake<IconData>() : null,
      searchButtonLoadingSize: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
    );
  }
  // coverage:ignore-end

  /// Spacing in between the [MyoroInput] & [_SearchSection].
  final double? spacing;

  /// Icon of [_SearchButton].
  final IconData? searchButtonIcon;

  /// Size of the [MyoroCircularLoader] in [_SearchButton].
  final double? searchButtonLoadingSize;

  /// Copy with.
}
