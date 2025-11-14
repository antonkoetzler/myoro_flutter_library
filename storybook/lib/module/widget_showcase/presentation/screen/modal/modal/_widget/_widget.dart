part of '../myoro_modal_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroModalWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseScreenViewModel>();

    return Navigator(
      key: viewModel.state.navigatorKey,
      onGenerateRoute: (_) {
        return MaterialPageRoute(
          builder: (_) {
            return MyoroIconTextButton(onTapUp: (_) => viewModel.showModal(context), text: 'Click to show the modal!');
          },
        );
      },
    );
  }
}
