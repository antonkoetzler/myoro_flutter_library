part of '../myoro_indexed_stack_widget_showcase_screen.dart';

/// [Widget] of [MyoroIndexedStackWidgetShowcaseScreen].
final class _Image extends StatelessWidget {
  const _Image(this.image);

  final String image;

  @override
  Widget build(context) {
    return Center(child: Image.asset(image));
  }
}
