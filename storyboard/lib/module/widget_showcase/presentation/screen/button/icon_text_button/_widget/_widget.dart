part of '../myoro_icon_text_button_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenScreenConfiguration.widget] of [MyoroIconTextButtonWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final iconTextButtonViewModel = context.read<MyoroIconTextButtonWidgetShowcaseScreenViewModel>();

    return ListenableBuilder(
      listenable: iconTextButtonViewModel.state.buttonViewModel.state,
      builder: (_, _) {
        return ListenableBuilder(
          listenable: iconTextButtonViewModel.state,
          builder: (_, _) {
            return IntrinsicWidth(
              child: MyoroIconTextButton(configuration: iconTextButtonViewModel.configuration(context)),
            );
          },
        );
      },
    );
  }
}
