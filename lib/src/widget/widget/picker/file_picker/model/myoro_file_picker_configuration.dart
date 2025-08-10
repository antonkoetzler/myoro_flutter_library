import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_file_picker_configuration.g.dart';

/// Configuration model of [MyoroFilePicker].
@immutable
@myoroModel
final class MyoroFilePickerConfiguration with _$MyoroFilePickerConfigurationMixin {
  const MyoroFilePickerConfiguration({this.selectedFile, required this.onChanged});

  // coverage:ignore-start
  MyoroFilePickerConfiguration.fake() : selectedFile = null, onChanged = ((_) {});
  // coverage:ignore-end

  /// Initially selected file.
  final String? selectedFile;

  /// Callback executed when the selected file changes
  final MyoroFilePickerOnChanged onChanged;
}
