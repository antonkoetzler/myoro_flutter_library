part of '../widget/myoro_request_widget.dart';

/// Error feedback of [MyoroRequestWidget].
final class _ErrorFeedback<T> extends StatelessWidget {
  /// Default constructor.
  const _ErrorFeedback(this._requestController, this._errorShowIcon, this._errorTitle, this._errorSubtitle);

  /// Request controller.
  final MyoroRequestController<T> _requestController;

  /// [MyoroErrorFeedback.showIcon].
  final bool _errorShowIcon;

  /// [MyoroErrorFeedback.title].
  final String _errorTitle;

  /// [MyoroErrorFeedback.subtitle].
  final String _errorSubtitle;

  /// Build function.
  @override
  Widget build(context) {
    final localization = context.mflLocalization;
    final myoroFeedbackErrorFeedbackTitle = localization.myoroFeedbackErrorFeedbackTitle;

    final themeExtension = context.resolveThemeExtension<MyoroRequestWidgetThemeExtension>();
    final errorFeedbackPadding = themeExtension.errorFeedbackPadding ?? EdgeInsets.zero;

    return Center(
      child: Padding(
        padding: errorFeedbackPadding,
        child: MyoroErrorFeedback(
          showIcon: _errorShowIcon,
          title: _errorTitle.isNotEmpty ? _errorTitle : myoroFeedbackErrorFeedbackTitle,
          subtitle: _errorSubtitle,
          onRetry: (context) => _requestController.fetch(),
        ),
      ),
    );
  }
}
