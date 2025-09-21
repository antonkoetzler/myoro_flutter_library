import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroColors', () {
    // Transparency
    expect(MyoroColors.transparent, Colors.transparent);

    // Grays
    expect(MyoroColors.gray1, const Color(0xFF202020));
    expect(MyoroColors.gray2, const Color(0xFFD0D0D0));
    expect(MyoroColors.gray3, const Color(0xFFEFEFEF));

    // Greens
    expect(MyoroColors.green1, Colors.green);

    // Reds
    expect(MyoroColors.red1, Colors.red);

    // Blues
    expect(MyoroColors.blue1, Colors.lightBlue);
  });
}
