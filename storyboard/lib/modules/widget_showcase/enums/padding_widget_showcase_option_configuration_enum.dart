import 'package:faker/faker.dart';
import 'package:storyboard/storyboard.dart';

/// Enum of [PaddingWidgetShowcaseOptionConfiguration].
///
/// TODO: Needs to be tested.
enum PaddingWidgetShowcaseOptionConfigurationEnum {
  /// [PaddingWidgetShowcaseOptionConfiguration.allConfiguration]
  all,

  /// [PaddingWidgetShowcaseOptionConfiguration.symmetricConfiguration]
  symmetric;

  factory PaddingWidgetShowcaseOptionConfigurationEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  bool get isAll => this == all;
  bool get isSymmetric => this == symmetric;
}
