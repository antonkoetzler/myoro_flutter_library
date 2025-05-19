part of '../myoro_icon_text_button.dart';

/// Icon configuration of a [MyoroIconTextButton].
class MyoroIconTextButtonIconConfiguration extends Equatable {
  /// [Icon.icon]
  final IconData icon;

  /// [Icon.size]
  final double? size;

  const MyoroIconTextButtonIconConfiguration({required this.icon, this.size});

  MyoroIconTextButtonIconConfiguration.fake()
    : icon = myoroFake<IconData>(),
      size = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 100) : null;

  MyoroIconTextButtonIconConfiguration copyWith({IconData? icon, double? size, bool sizeProvided = true}) {
    return MyoroIconTextButtonIconConfiguration(
      icon: icon ?? this.icon,
      size: sizeProvided ? (size ?? this.size) : null,
    );
  }

  @override
  List<Object?> get props {
    return [icon, size];
  }

  @override
  String toString() =>
      'MyoroIconTextButtonIconConfiguration(\n'
      '  icon: $icon,\n'
      '  size: $size,\n'
      ');';
}
