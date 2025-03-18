import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

enum _ResultEnum {
  success,
  error;

  bool get isSuccess => this == success;
  bool get isError => this == error;

  String formatText(String text) {
    final prefix = switch (this) {
      _ResultEnum.success => 'Resolved content: ',
      _ResultEnum.error => '',
    };
    return '$prefix$text';
  }

  MyoroSnackBarTypeEnum get snackBarTypeEnum {
    return switch (this) {
      _ResultEnum.success => MyoroSnackBarTypeEnum.success,
      _ResultEnum.error => MyoroSnackBarTypeEnum.error,
    };
  }
}

/// Widget showcase of [MyoroResolver].
final class MyoroResolverWidgetShowcase extends StatefulWidget {
  const MyoroResolverWidgetShowcase({super.key});

  @override
  State<MyoroResolverWidgetShowcase> createState() =>
      _MyoroResolverWidgetShowcaseState();
}

final class _MyoroResolverWidgetShowcaseState
    extends State<MyoroResolverWidgetShowcase> {
  final _resultEnumNotifier = ValueNotifier<_ResultEnum>(_ResultEnum.success);

  void _showSnackBar(
    BuildContext context, {
    required String text,
    required _ResultEnum resultEnum,
  }) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(
        snackBarType: resultEnum.snackBarTypeEnum,
        message: resultEnum.formatText(text),
      ),
    );
  }

  Future<String> _makeRequest() async {
    await Future.delayed(const Duration(seconds: 1));
    final messages = ['Brazil #1', 'Myoro is crazy good!', 'Fora lula'];
    final message = messages[faker.randomGenerator.integer(messages.length)];
    if (_resultEnumNotifier.value.isError) throw Exception(message);
    return message;
  }

  @override
  void dispose() {
    _resultEnumNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyoroResolver<String>(
      onSuccess: (String? result) => _showSnackBar(context,
          text: result!, resultEnum: _ResultEnum.success),
      onError: (String errorMessage) => _showSnackBar(context,
          text: errorMessage, resultEnum: _ResultEnum.error),
      request: () async => await _makeRequest(),
      builder: (
        String? result,
        MyoroRequestEnum status,
        String? errorMessage,
        MyoroResolverController controller,
      ) {
        return switch (status) {
          MyoroRequestEnum.idle => const MyoroCircularLoader(),
          MyoroRequestEnum.loading => const MyoroCircularLoader(),
          MyoroRequestEnum.success =>
            _RefreshButtons(controller, _resultEnumNotifier),
          MyoroRequestEnum.error =>
            _RefreshButtons(controller, _resultEnumNotifier),
        };
      },
    );
  }
}

final class _RefreshButtons extends StatelessWidget {
  final MyoroResolverController _controller;
  final ValueNotifier<_ResultEnum> _resultEnumNotifier;

  const _RefreshButtons(this._controller, this._resultEnumNotifier);

  void _onPressed(_ResultEnum resultEnum) {
    _resultEnumNotifier.value = resultEnum;
    _controller.refresh();
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: context
            .resolveThemeExtension<MyoroResolverWidgetShowcaseThemeExtension>()
            .spacing,
        children: [
          _RefreshButton(
            'Click to execute a successful request',
            () => _onPressed(_ResultEnum.success),
          ),
          _RefreshButton(
            'Click to execute an unsuccessful request',
            () => _onPressed(_ResultEnum.error),
          ),
        ],
      ),
    );
  }
}

final class _RefreshButton extends StatelessWidget {
  final String _text;
  final VoidCallback _onPressed;

  const _RefreshButton(
    this._text,
    this._onPressed,
  );

  @override
  Widget build(BuildContext context) {
    final themeExtension = context
        .resolveThemeExtension<MyoroResolverWidgetShowcaseThemeExtension>();

    return MyoroIconTextHoverButton(
      text: _text,
      textAlign: themeExtension.buttonTextAlign,
      configuration: MyoroHoverButtonConfiguration(
          bordered: themeExtension.buttonBordered),
      onPressed: _onPressed,
    );
  }
}
