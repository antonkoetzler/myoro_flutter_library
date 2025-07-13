import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  bool onTapDownExecuted = false;
  bool onTapUpExecuted = false;
  final viewModel =
      MyoroButtonViewModel()
        ..state.configuration = MyoroButtonConfiguration.fake().copyWith(
          cursorProvided: false,
          onTapDown: (_) => onTapDownExecuted = true,
          onTapUp: (_) => onTapUpExecuted = true,
        );

  tearDownAll(viewModel.dispose);

  test('MyoroButtonViewModel.onEnter', () {
    viewModel.onEnter(null);
    expect(viewModel.state.tapStatus.isHover, isTrue);
  });

  test('MyoroButtonViewModel.onExit', () {
    viewModel.onExit(null);
    expect(viewModel.state.tapStatus.isIdle, isTrue);
  });

  test('MyoroButtonViewModel.OnTapDown', () {
    viewModel.onTapDown(TapDownDetails());
    expect(viewModel.state.tapStatus.isTap, isTrue);
    expect(onTapDownExecuted, isTrue);
  });

  test('MyoroButtonViewModel.onTapUp', () {
    viewModel.onTapUp(
      TapUpDetails(kind: PointerDeviceKind.values[faker.randomGenerator.integer(PointerDeviceKind.values.length)]),
    );
    expect(viewModel.state.tapStatus.isHover, isTrue);
    expect(onTapUpExecuted, isTrue);
  });

  test('MyoroButtonViewModel.onTapCancel', () {
    viewModel.onTapCancel();
    expect(viewModel.state.tapStatus.isIdle, isTrue);
  });

  test('MyoroButtonViewModel.cursor', () {
    expect(viewModel.cursor, SystemMouseCursors.click);
  });
}
