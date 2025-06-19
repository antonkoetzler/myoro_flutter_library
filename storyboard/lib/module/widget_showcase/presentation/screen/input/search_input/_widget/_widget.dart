part of '../myoro_search_input_widget_showcase.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroSearchInputWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSearchInputWidgetShowcaseViewModel>();
    return MyoroSearchInput<String>(configuration: viewModel.configuration(context, const _Suffix()));
  }
}
