import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroHoverButtonConfiguration].
void main() {
  final model1 = MyoroHoverButtonConfiguration.fake();
  final model2 = MyoroHoverButtonConfiguration.fake();

  test('MyoroHoverButtonConfiguration.copyWith', () {
    expect(
      model1.copyWith(
        primaryColor: model2.primaryColor,
        onPrimaryColor: model2.onPrimaryColor,
        isHovered: model2.isHovered,
        bordered: model2.bordered,
        borderRadius: model2.borderRadius,
        tooltip: model2.tooltip,
        onHover: model2.onHover,
      ),
      model2,
    );
  });

  test('MyoroHoverButtonConfiguration.lerp', () {
    for (double i = 0; i < 1; i += 0.01) {
      final lerpedModel = MyoroHoverButtonConfiguration.lerp(model1, model2, i);
      expect(lerpedModel.primaryColor, Color.lerp(model1.primaryColor, model2.primaryColor, i));
      expect(lerpedModel.onPrimaryColor, Color.lerp(model1.onPrimaryColor, model2.onPrimaryColor, i));
      expect(lerpedModel.isHovered, myoroLerp(model1.isHovered, model2.isHovered, i));
      expect(lerpedModel.bordered, myoroLerp(model1.bordered, model2.bordered, i));
      expect(lerpedModel.borderRadius, BorderRadius.lerp(model1.borderRadius, model2.borderRadius, i));
      expect(lerpedModel.tooltip, myoroLerp(model1.tooltip, model2.tooltip, i));
      expect(lerpedModel.onHover, myoroLerp(model1.onHover, model2.onHover, i));
    }
  });

  test('MyoroHoverButtonConfiguration.toString', () {
    expect(
      model1.toString(),
      'MyoroHoverButtonConfiguration(\n'
      '  primaryColor: ${model1.primaryColor},\n'
      '  onPrimaryColor: ${model1.onPrimaryColor},\n'
      '  isHovered: ${model1.isHovered},\n'
      '  bordered: ${model1.bordered},\n'
      '  borderRadius: ${model1.borderRadius},\n'
      '  tooltip: ${model1.tooltip},\n'
      '  onHover: ${model1.onHover},\n'
      ');',
    );
  });
}
