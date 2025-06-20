part of '../myoro_search_input_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenScreenConfiguration.widget] of [MyoroSearchInputWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSearchInputWidgetShowcaseScreenViewModel>();
    return MyoroSearchInput<String>(configuration: viewModel.configuration(context, const _Suffix()));
  }
}
