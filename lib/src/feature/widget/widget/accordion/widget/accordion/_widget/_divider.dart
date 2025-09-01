part of '../myoro_accordion.dart';

/// [MyoroBasicDivider] of a [MyoroAccordion].
final class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(context) {
    return const MyoroBasicDivider(configuration: MyoroBasicDividerConfiguration(direction: Axis.horizontal));
  }
}
