part of '../myoro_form_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroFormWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroFormWidgetShowcaseScreenViewModel>();
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    return MyoroForm<String>(
      request: viewModel.request,
      validation: viewModel.validation,
      onSuccess: (result) => viewModel.onSuccess(context, result),
      onError: (error) => viewModel.onError(context, error),
      builder: (request, formController) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          spacing: widgetShowcaseThemeExtension.spacing,
          children: [
            Text(
              'Type "Kitty" to successfully complete the form.',
              textAlign: TextAlign.center,
              style: widgetShowcaseThemeExtension.labelTextStyle,
            ),
            Flexible(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: widgetShowcaseThemeExtension.spacing,
                children: [const Flexible(child: _Input()), _SubmitButton(formController)],
              ),
            ),
            if (request.status.isSuccess) const _Kitty(),
          ],
        );
      },
    );
  }
}
