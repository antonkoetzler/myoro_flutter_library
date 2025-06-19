part of '../myoro_button_widget_showcase.dart';

/// [MyoroButtonConfiguration.cursor] option of [MyoroButtonWidgetShowcase].
final class _CursorOption extends StatelessWidget {
  const _CursorOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseViewModel>();
    return MouseCursorWidgetShowcaseOption(onChanged: (cursor) => viewModel.cursor = cursor);
  }
}
