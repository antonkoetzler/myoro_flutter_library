part of '../myoro_button_widget_showcase_screen.dart';

/// [MyoroButtonConfiguration.cursor] option of [MyoroButtonWidgetShowcaseScreen].
final class _CursorOption extends StatelessWidget {
  const _CursorOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseScreenViewModel>();
    return MouseCursorWidgetShowcaseOption(onChanged: (cursor) => viewModel.state.cursor = cursor);
  }
}
