part of 'myoro_input_widget_showcase_bloc.dart';

final class MyoroInputWidgetShowcaseState extends Equatable {
  /// Named constructor of [MyoroInput] being used.
  final MyoroInputWidgetShowcaseEnum typeEnum;

  /// [MyoroInput.configuration].
  final MyoroInputConfiguration configuration;

  const MyoroInputWidgetShowcaseState({
    this.typeEnum = MyoroInputWidgetShowcaseEnum.none,
    this.configuration = const MyoroInputConfiguration(inputStyle: MyoroInputStyleEnum.outlined),
  });

  MyoroInputWidgetShowcaseState copyWith({
    MyoroInputWidgetShowcaseEnum? typeEnum,
    MyoroInputConfiguration? configuration,
  }) {
    return MyoroInputWidgetShowcaseState(
      typeEnum: typeEnum ?? this.typeEnum,
      configuration: configuration ?? this.configuration,
    );
  }

  @override
  String toString() => ''
      'MyoroInputWidgetShowcaseState(\n'
      '  typeEnum: $typeEnum,\n'
      '  configuration: $configuration,\n'
      ');';

  @override
  List<Object?> get props => [typeEnum, configuration];
}
