part of '../myoro_modal_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenScreenConfiguration.widget] of [MyoroModalWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseScreenViewModel>();

    return Navigator(
      key: viewModel.state.navigatorKey,
      onGenerateRoute: (_) {
        return MaterialPageRoute(
          builder: (_) {
            return MyoroIconTextButton(
              configuration: MyoroIconTextButtonConfiguration(
                buttonConfiguration: MyoroButtonConfiguration(onTapUp: (_) => viewModel.showModal(context)),
                textConfiguration: const MyoroTextConfiguration(text: 'Click to show the modal!'),
              ),
            );
          },
        );
      },
    );
  }
}
