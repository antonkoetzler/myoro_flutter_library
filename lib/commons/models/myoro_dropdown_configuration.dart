import 'package:equatable/equatable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [String] builder of the selected dropdown items in the dropdown's [MyoroInput].
typedef MyoroDropdownConfigurationItemLabelBuilder<T> = String Function(T item);

/// Shared configuration members of both [MyoroSingularDropdown] & [MyoroMultiDropdown].
final class MyoroDropdownConfiguration<T> extends Equatable {
  /// Items of the dropdown.
  final MyoroDataConfiguration<T> dataConfiguration;

  /// [MyoroMenu.itemBuilder] of the dropdown's [MyoroMenu].
  final MyoroMenuItemBuilder<T> itemBuilder;

  /// [String] builder of the selected dropdown items in the dropdown's [MyoroInput].
  final MyoroDropdownConfigurationItemLabelBuilder<T> itemLabelBuilder;

  /// Whether or not to provide [MyoroInputConfiguration.showClearTextButton] to the dropdown's [MyoroInput].
  final bool allowItemClearing;

  const MyoroDropdownConfiguration({
    required this.dataConfiguration,
    required this.itemBuilder,
    required this.itemLabelBuilder,
    this.allowItemClearing = true,
  });

  MyoroDropdownConfiguration<T> copyWith({
    MyoroDataConfiguration<T>? dataConfiguration,
    MyoroMenuItemBuilder<T>? itemBuilder,
    MyoroDropdownConfigurationItemLabelBuilder<T>? itemLabelBuilder,
    bool? allowItemClearing,
  }) {
    return MyoroDropdownConfiguration(
      dataConfiguration: dataConfiguration ?? this.dataConfiguration,
      itemBuilder: itemBuilder ?? this.itemBuilder,
      itemLabelBuilder: itemLabelBuilder ?? this.itemLabelBuilder,
      allowItemClearing: allowItemClearing ?? this.allowItemClearing,
    );
  }

  @override
  String toString() => ''
      'MyoroDropdownConfiguration(\n'
      '  dataConfiguration: $dataConfiguration,\n'
      '  itemBuilder: $itemBuilder,\n'
      '  itemLabelBuilder: $itemLabelBuilder,\n'
      '  allowItemClearing: $allowItemClearing,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      dataConfiguration,
      itemBuilder,
      itemLabelBuilder,
      allowItemClearing,
    ];
  }
}
