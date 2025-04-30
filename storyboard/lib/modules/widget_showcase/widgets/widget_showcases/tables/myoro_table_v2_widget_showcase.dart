import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [WidgetShowcase] of [MyoroTableV2].
///
/// TODO: Needs to be tested.
final class MyoroTableV2WidgetShowcase extends StatelessWidget {
  const MyoroTableV2WidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return const WidgetShowcase(widget: _Widget());
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return MyoroTableV2<String>(
      configuration: MyoroTableV2Configuration(
        columns: List.generate(
          faker.randomGenerator.integer(5, min: 1),
          (_) => MyoroTableV2Column(
            widthConfiguration: MyoroTableV2ColumnWidthConfiguration.fake(),
            child: Text(faker.lorem.word()),
          ),
        ),
        request: _request,
      ),
    );
  }

  Future<MyoroTableV2Pagination<String>> _request() async {
    await Future.delayed(const Duration(seconds: 1));
    return MyoroTableV2Pagination(
      items:
          List.generate(
            faker.randomGenerator.integer(200),
            (int index) => '$index) ${faker.lorem.word()}',
          ).toSet(),
    );
  }
}
