part of '../widget/myoro_field.dart';

/// Vertical layout of [MyoroField].
final class _VerticalLayout extends StatelessWidget {
  /// Default constructor.
  const _VerticalLayout();

  /// Build function.
  @override
  Widget build(context) {
    return const _Layout(Column(mainAxisSize: MainAxisSize.min, children: [_Label(), _Data()]));
  }
}
