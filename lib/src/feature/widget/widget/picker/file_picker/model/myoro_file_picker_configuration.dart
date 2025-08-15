import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_file_picker_configuration.g.dart';

/// Configuration model of [MyoroFilePicker].
@immutable
@myoroModel
final class MyoroFilePickerConfiguration with _$MyoroFilePickerConfigurationMixin {
  const MyoroFilePickerConfiguration({
    this.title,
    required this.fileType,
    this.allowedExtensions = const [],
    required this.onChanged,
  }) : assert(
         fileType == MyoroFilePickerFileTypeEnum.custom ? allowedExtensions.length > 0 : allowedExtensions.length == 0,
         '[MyoroFilePickerConfiguration]: If [fileType] is [MyoroFilePickerFileTypeEnum.custom], [allowedExtensions] '
         'cannot be empty. If [fileType] is not [MyoroFilePickerFileTypeEnum.custom], [allowedExtensions] must be empty.',
       );

  // coverage:ignore-start
  factory MyoroFilePickerConfiguration.fake() {
    final fileType = MyoroFilePickerFileTypeEnum.fake();
    return MyoroFilePickerConfiguration(
      title: faker.randomGenerator.boolean() ? faker.lorem.word() : null,
      fileType: fileType,
      allowedExtensions: fileType.isCustom ? const ['txt', 'pdf'] : const [],
      onChanged: ((_) {}),
    );
  }
  // coverage:ignore-end

  /// Title of the picker window.
  final String? title;

  /// File type accepted.
  final MyoroFilePickerFileTypeEnum fileType;

  /// Permitted extensions when [fileallowedExtensionsType] is [MyoroFilePickerFileTypeEnum.custom].
  final List<String> allowedExtensions;

  /// Callback executed when the selected file changes
  final MyoroFilePickerOnChanged onChanged;
}
