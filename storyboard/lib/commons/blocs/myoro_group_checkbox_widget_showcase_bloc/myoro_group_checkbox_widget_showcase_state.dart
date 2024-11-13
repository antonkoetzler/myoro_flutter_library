part of 'myoro_group_checkbox_widget_showcase_bloc.dart';

final class MyoroGroupCheckboxWidgetShowcaseState extends Equatable {
  /// Items being built in the [MyoroGroupCheckbox].
  final List<MyoroGroupCheckboxItem> items;

  const MyoroGroupCheckboxWidgetShowcaseState({
    required this.items,
  });

  MyoroGroupCheckboxWidgetShowcaseState copyWith({
    List<MyoroGroupCheckboxItem>? items,
  }) {
    return MyoroGroupCheckboxWidgetShowcaseState(
      items: items ?? this.items,
    );
  }

  @override
  String toString() => ''
      'MyoroGroupCheckboxWidgetShowcaseState(\n'
      '  items: $items,\n'
      ');';

  @override
  List<Object?> get props => [items];
}
