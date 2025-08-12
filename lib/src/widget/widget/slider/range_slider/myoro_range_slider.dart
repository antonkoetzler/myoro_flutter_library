import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_content.dart';

/// Range slider of MFL.
///
/// TODO: Being implemented and needs to be tested.
final class MyoroRangeSlider extends StatelessWidget {
  const MyoroRangeSlider({super.key, required this.configuration});

  /// Configuration.
  final MyoroRangeSliderConfiguration configuration;

  @override
  Widget build(_) {
    return InheritedProvider(create: (_) => MyoroRangeSliderViewModel(configuration), child: const _Content());
  }
}
