import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  final model = PaddingWidgetShowcaseOptionConfiguration.fake();

  test('PaddingWidgetShowcaseOptionConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = PaddingWidgetShowcaseOptionConfiguration.fake();
    expect(
      model.copyWith(
        labelConfiguration: otherModel.labelConfiguration,
        labelConfigurationProvided: otherModel.labelConfiguration != null,
        allConfiguration: otherModel.allConfiguration,
        allConfigurationProvided: otherModel.allConfiguration != null,
        symmetricConfiguration: otherModel.symmetricConfiguration,
        symmetricConfigurationProvided: otherModel.symmetricConfiguration != null,
      ),
      otherModel,
    );
  });

  test('PaddingWidgetShowcaseOptionConfiguration.toString', () {
    expect(
      model.toString(),
      'PaddingWidgetShowcaseOptionConfiguration(\n'
      '  labelConfiguration: ${model.labelConfiguration},\n'
      '  allConfiguration: ${model.allConfiguration},\n'
      '  symmetricConfiguration: ${model.symmetricConfiguration},\n'
      ');',
    );
  });

  test('PaddingWidgetShowcaseOptionConfiguration.effectiveConfiguration', () {
    if (model.allConfiguration != null) {
      expect(model.effectiveConfiguration, PaddingWidgetShowcaseOptionConfigurationEnum.all);
    }
    if (model.symmetricConfiguration != null) {
      expect(model.effectiveConfiguration, PaddingWidgetShowcaseOptionConfigurationEnum.symmetric);
    }
  });
}
