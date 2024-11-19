// TODO

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Request to be executed when the input is triggered;
typedef MyoroSearchInputRequest<T> = FutureOr<List<T>> Function(String text);

/// [MyoroMenuItem] builder because this widget is templated.
typedef MyoroSearchInputItemBuilder<T> = MyoroMenuItem Function(T item);

/// Search input. Shows a dropdown after making a search request.
final class MyoroSearchInput<T> extends StatefulWidget {
  /// [MyoroInput] configuration.
  final MyoroInputConfiguration configuration;

  /// Search request.
  final MyoroSearchInputRequest<T> request;

  /// [MyoroMenuItem] builder to display the items in [_SearchSection].
  final MyoroSearchInputItemBuilder<T> itemBuilder;

  const MyoroSearchInput({
    super.key,
    required this.configuration,
    required this.request,
    required this.itemBuilder,
  });

  @override
  State<MyoroSearchInput<T>> createState() => _MyoroSearchInputState<T>();
}

final class _MyoroSearchInputState<T> extends State<MyoroSearchInput<T>> {
  MyoroInputConfiguration get _configuration => widget.configuration;
  MyoroSearchInputRequest<T> get _request => widget.request;
  MyoroSearchInputItemBuilder<T> get _itemBuilder => widget.itemBuilder;

  final _formController = MyoroFormController();

  TextEditingController? _localTextController;
  TextEditingController get _textController {
    return _configuration.controller ?? (_localTextController ??= TextEditingController());
  }

  final _itemsNotifier = ValueNotifier<List<T>>([]);

  @override
  void dispose() {
    if (_configuration.controller == null) _textController.dispose();
    _itemsNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyoroForm<List<T>>(
      controller: _formController,
      request: () async => await _request.call(_textController.text),
      builder: (results, status, controller) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MyoroInput(
              configuration: _configuration.copyWith(
                controller: _textController,
                suffix: _SearchButton(_formController),
                onFieldSubmitted: (_) => _formController.finish(),
              ),
            ),
            if (results?.isNotEmpty == true || status.isLoading) ...[
              SizedBox(height: context.resolveThemeExtension<MyoroSearchInputThemeExtension>().spacing),
              Flexible(child: _SearchSection(results, status, _itemBuilder)),
            ],
          ],
        );
      },
    );
  }
}

final class _SearchButton extends StatelessWidget {
  final MyoroFormController formController;

  const _SearchButton(this.formController);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroSearchInputThemeExtension>();

    return MyoroIconTextHoverButton(
      icon: themeExtension.searchButtonIcon,
      bordered: themeExtension.searchButtonBordered,
      onPressed: () => formController.finish(),
    );
  }
}

final class _SearchSection<T> extends StatelessWidget {
  final List<T>? results;
  final MyoroRequestEnum status;
  final MyoroSearchInputItemBuilder<T> itemBuilder;

  const _SearchSection(this.results, this.status, this.itemBuilder);

  @override
  Widget build(BuildContext context) {
    if (status.isLoading) return const MyoroCircularLoader();
    return MyoroMenu(
      maxWidth: double.infinity,
      items: results!.map((T result) => itemBuilder.call(result)).toList(),
    );
  }
}
