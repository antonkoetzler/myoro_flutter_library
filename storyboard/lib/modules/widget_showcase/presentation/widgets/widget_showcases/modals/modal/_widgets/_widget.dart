part of '../myoro_modal_widget_showcase.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroModalWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseViewModel>();

    return Navigator(
      key: viewModel.state.navigatorKey,
      onGenerateRoute: (_) {
        return MaterialPageRoute(
          builder: (_) {
            return MyoroIconTextButton(
              configuration: MyoroIconTextButtonConfiguration(
                buttonConfiguration: MyoroButtonConfiguration(onTapUp: (_) => viewModel.showModal(context)),
                textConfiguration: const MyoroIconTextButtonTextConfiguration(text: 'Click to show the modal!'),
              ),
            );
          },
        );
      },
    );
  }
}
