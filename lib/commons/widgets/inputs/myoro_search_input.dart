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

  TextEditingController? _localTextController;
  TextEditingController get _textController {
    return _configuration.controller ?? (_localTextController ??= TextEditingController());
  }

  final _formController = MyoroFormController();
  final _itemsNotifier = ValueNotifier<List<T>>([]);
  final _focusNode = FocusNode();
  final _displaySearchSectionNotifier = ValueNotifier<bool>(false);

  void _focusNodeListener() {
    _displaySearchSectionNotifier.value = _focusNode.hasFocus;
  }

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_focusNodeListener);
  }

  @override
  void dispose() {
    if (_configuration.controller == null) _textController.dispose();
    _itemsNotifier.dispose();
    _focusNode.dispose();
    _displaySearchSectionNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: _focusNode,
      child: MyoroForm<List<T>>(
        controller: _formController,
        request: () async => await _request.call(_textController.text),
        onSuccess: (_) => _focusNode.requestFocus(),
        builder: (results, status, controller) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MyoroInput(
                configuration: _configuration.copyWith(
                  controller: _textController,
                  suffix: _SearchButton(status, controller),
                  onFieldSubmitted: (_) => _formController.finish(),
                ),
              ),
              ValueListenableBuilder(
                valueListenable: _displaySearchSectionNotifier,
                builder: (_, bool displaySearchSection, __) {
                  if (!(results?.isNotEmpty == true && status.isSuccess && displaySearchSection)) {
                    return const SizedBox.shrink();
                  }

                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: context.resolveThemeExtension<MyoroSearchInputThemeExtension>().spacing),
                      Flexible(child: _SearchSection(results, _itemBuilder)),
                    ],
                  );
                  // if (results?.isNotEmpty == true && status.isSuccess) ...[
                  //   SizedBox(height: context.resolveThemeExtension<MyoroSearchInputThemeExtension>().spacing),
                  //   Flexible(child: _SearchSection(results, _itemBuilder)),
                  // ],
                },
              ),
            ],
          );
        },
      ),
    );
  }
}

final class _SearchButton extends StatelessWidget {
  final MyoroRequestEnum status;
  final MyoroFormController formController;

  const _SearchButton(this.status, this.formController);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroSearchInputThemeExtension>();

    return MyoroHoverButton(
      configuration: MyoroHoverButtonConfiguration(bordered: themeExtension.searchButtonBordered),
      onPressed: () => status.isLoading ? {} : formController.finish(),
      builder: (bool hovered, Color contentColor, Color backgroundColor) {
        final color = hovered ? themeExtension.searchButtonHoverColor : contentColor;

        return Padding(
          padding: EdgeInsets.all(status.isLoading ? 9.5 : 7.5),
          child: status.isLoading
              ? MyoroCircularLoader(
                  color: color,
                  size: themeExtension.searchButtonLoadingSize,
                )
              : Icon(
                  themeExtension.searchButtonIcon,
                  color: color,
                ),
        );
      },
    );
  }
}

final class _SearchSection<T> extends StatelessWidget {
  final List<T>? results;
  final MyoroSearchInputItemBuilder<T> itemBuilder;

  const _SearchSection(this.results, this.itemBuilder);

  @override
  Widget build(BuildContext context) {
    return MyoroMenu(
      maxWidth: double.infinity,
      dataConfiguration: MyoroDataConfiguration(
        staticItems: results!.map((T result) => itemBuilder.call(result)).toList(),
      ),
    );
  }
}
