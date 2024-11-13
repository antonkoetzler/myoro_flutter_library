import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Checkbox within [MyoroGroupCheckbox].
final class MyoroGroupCheckboxItem extends Equatable {
  /// Label of the item, cannot be empty.
  final String label;

  /// Initial value of the item.
  final bool initialValue;

  MyoroGroupCheckboxItem({
    required this.label,
    this.initialValue = false,
  }) : assert(
          label.isNotEmpty,
          '[MyoroGroupCheckboxItem]: Label cannot be empty.',
        );

  MyoroGroupCheckboxItem copyWith({
    String? label,
    bool? initialValue,
  }) {
    return MyoroGroupCheckboxItem(
      label: label ?? this.label,
      initialValue: initialValue ?? this.initialValue,
    );
  }

  MyoroGroupCheckboxItem.fake()
      : label = faker.randomGenerator.string(50),
        initialValue = faker.randomGenerator.boolean();

  @override
  String toString() => ''
      'MyoroGroupCheckboxItem(\n'
      '  label: $label,\n'
      '  initialValue: $initialValue,\n'
      ');';

  @override
  List<Object?> get props => [label, initialValue];
}
