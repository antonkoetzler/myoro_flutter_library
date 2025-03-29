part of 'myoro_dropdown_v2_bloc.dart';

final class MyoroDropdownV2State<T> extends Equatable {
  /// If the dropdown is enabled/usable.
  final bool enabled;

  /// Selected items displaying in [_Input].
  final Set<T> selectedItems;

  const MyoroDropdownV2State({
    required this.enabled,
    this.selectedItems = const {},
  });

  MyoroDropdownV2State<T> copyWith({bool? enabled, Set<T>? selectedItems}) {
    return MyoroDropdownV2State(
      enabled: enabled ?? this.enabled,
      selectedItems: selectedItems ?? this.selectedItems,
    );
  }

  @override
  List<Object?> get props {
    return [enabled, selectedItems];
  }

  @override
  String toString() =>
      'MyoroDropdownV2State<$T>(\n'
      '  enabled: $enabled,\n'
      '  selectedItems: $selectedItems,\n'
      ');';
}
