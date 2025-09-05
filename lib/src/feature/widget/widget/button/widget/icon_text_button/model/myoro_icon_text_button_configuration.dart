import 'package:faker/faker.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_icon_text_button_configuration.g.dart';

/// Configuration model of [MyoroIconTextButton].
@myoroModel
class MyoroIconTextButtonConfiguration extends MyoroButtonConfiguration with _$MyoroIconTextButtonConfigurationMixin {
  static const invertDefaultValue = false;

  const MyoroIconTextButtonConfiguration({
    super.tooltipConfiguration,
    super.onTapDown,
    super.onTapUp,
    this.iconConfiguration,
    this.textConfiguration,
  }) : assert(
         !(iconConfiguration == null && textConfiguration == null),
         '[MyoroIconTextButtonConfiguration]: [iconConfiguration] '
         'and/or [textConfiguration] must be provided.',
       );
 YOU ARE HERE
  // coverage:ignore-start
  factory MyoroIconTextButtonConfiguration.fake({bool? borderRadiusProvided, bool? borderBuilderProvided}) {
    final mandatorilyProvidedConfiguration = faker.randomGenerator.boolean() ? 'icon' : 'text';

    return MyoroIconTextButtonConfiguration(
      tooltipConfiguration: faker.randomGenerator.boolean() ? MyoroTooltipConfiguration.fake() : null,
      onTapDown: faker.randomGenerator.boolean() ? ((_) {}) : null,
      onTapUp: faker.randomGenerator.boolean() ? ((_) {}) : null,
      iconConfiguration: (faker.randomGenerator.boolean() || mandatorilyProvidedConfiguration == 'icon')
          ? MyoroIconConfiguration.fake()
          : null,
      textConfiguration: (faker.randomGenerator.boolean() || mandatorilyProvidedConfiguration == 'text')
          ? MyoroTextConfiguration.fake()
          : null,
    );
  }
  // coverage:ignore-end

  /// Icon configuration of the [MyoroIconTextButton].
  final MyoroIconConfiguration? iconConfiguration;

  /// Text configuration of the [MyoroIconTextButton].
  final MyoroTextConfiguration? textConfiguration;

  @override
  MyoroIconTextButtonConfiguration copyWith({
    MyoroTooltipConfiguration? tooltipConfiguration,
    bool tooltipConfigurationProvided = true,
    MyoroButtonOnTapDown? onTapDown,
    bool onTapDownProvided = true,
    MyoroButtonOnTapUp? onTapUp,
    bool onTapUpProvided = true,
    MyoroIconConfiguration? iconConfiguration,
    bool iconConfigurationProvided = true,
    MyoroTextConfiguration? textConfiguration,
    bool textConfigurationProvided = true,
  }) {
    return MyoroIconTextButtonConfiguration(
      tooltipConfiguration: tooltipConfigurationProvided ? (tooltipConfiguration ?? this.tooltipConfiguration) : null,
      onTapDown: onTapDownProvided ? (onTapDown ?? this.onTapDown) : null,
      onTapUp: onTapUpProvided ? (onTapUp ?? this.onTapUp) : null,
      iconConfiguration: iconConfigurationProvided ? (iconConfiguration ?? this.iconConfiguration) : null,
      textConfiguration: textConfigurationProvided ? (textConfiguration ?? this.textConfiguration) : null,
    );
  }
}
