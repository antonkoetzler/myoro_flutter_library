import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// Configuration model of [PaddingWidgetShowcaseOption].
///
/// TODO: Needs to be tested.
final class PaddingWidgetShowcaseOptionConfiguration extends Equatable {
  /// [EdgeInsets.all] configuration.
  final PaddingWidgetShowcaseOptionAllConfiguration? allConfiguration;

  /// [EdgeInsets.symmetric] configuration].
  final PaddingWidgetSHowcaseOptionSymmetricConfiguration? symmetricConfiguration;

