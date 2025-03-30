part of 'myoro_dropdown_bloc.dart';

final class MyoroDropdownState<T> extends Equatable {
  /// If the dropdown is enabled/usable.
  final bool enabled;

  /// Selected items displaying in [_Input].
  final Set<T> selectedItems;

  const MyoroDropdownState({
    required this.enabled,
    this.selectedItems = const {},
  });

  MyoroDropdownState<T> copyWith({bool? enabled, Set<T>? selectedItems}) {
    return MyoroDropdownState(
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
      'MyoroDropdownState<$T>(\n'
      '  enabled: $enabled,\n'
      '  selectedItems: $selectedItems,\n'
      ');';
}
