import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Request to be executed when the input is triggered;
typedef MyoroSearchInputRequest<T> = FutureOr<Set<T>> Function(String text);

/// Search input. Shows a dropdown after making a search request.
final class MyoroSearchInput<T> extends StatefulWidget {
  /// [MyoroInput] configuration.
  final MyoroInputConfiguration configuration;

  /// If [request] will be ran everytime the input's text changes rather than when the input is submitted.
  final bool requestWhenChanged;

  /// Search request.
  final MyoroSearchInputRequest<T> request;

  /// [MyoroMenuItem] builder to display the items in [_SearchSection].
  final MyoroMenuItemBuilder<T> itemBuilder;

  const MyoroSearchInput({
    super.key,
    required this.configuration,
    this.requestWhenChanged = false,
    required this.request,
    required this.itemBuilder,
  });

  @override
  State<MyoroSearchInput<T>> createState() => _MyoroSearchInputState<T>();
}

final class _MyoroSearchInputState<T> extends State<MyoroSearchInput<T>> {
  MyoroInputConfiguration get _configuration => widget.configuration;
  bool get _requestWhenChanged => widget.requestWhenChanged;
  MyoroSearchInputRequest<T> get _request => widget.request;
  MyoroMenuItemBuilder<T> get _itemBuilder => widget.itemBuilder;

  TextEditingController? _localTextController;
  TextEditingController get _textController {
    return _configuration.controller ??
        (_localTextController ??= TextEditingController());
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
      child: MyoroForm<Set<T>>(
        controller: _formController,
        request: () async => await _request.call(_textController.text),
        onSuccess: (_) => _focusNode.requestFocus(),
        builder: (
          Set<T>? results,
          MyoroRequestEnum status,
          MyoroFormController controller,
        ) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MyoroInput(
                configuration: _configuration.copyWith(
                  controller: _textController,
                  suffix: _SearchButton(status, controller),
                  onChanged:
                      _requestWhenChanged
                          ? (_) => _formController.finish()
                          : null,
                  onFieldSubmitted: (_) => _formController.finish(),
                ),
              ),
              ValueListenableBuilder(
                valueListenable: _displaySearchSectionNotifier,
                builder: (_, bool displaySearchSection, __) {
                  if (!(results?.isNotEmpty == true &&
                      status.isSuccess &&
                      displaySearchSection)) {
                    return const SizedBox.shrink();
                  }

                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height:
                            context
                                .resolveThemeExtension<
                                  MyoroSearchInputThemeExtension
                                >()
                                .spacing,
                      ),
                      Flexible(child: _SearchSection(results, _itemBuilder)),
                    ],
                  );
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
    final themeExtension =
        context.resolveThemeExtension<MyoroSearchInputThemeExtension>();

    return MyoroHoverButton(
      configuration: MyoroHoverButtonConfiguration(
        bordered: themeExtension.searchButtonBordered,
      ),
      onPressed: () => status.isLoading ? {} : formController.finish(),
      builder: (bool hovered, _, Color onPrimaryColor) {
        final color =
            hovered ? themeExtension.searchButtonHoverColor : onPrimaryColor;

        return Padding(
          padding: EdgeInsets.all(status.isLoading ? 9.5 : 7.5),
          child:
              status.isLoading
                  ? MyoroCircularLoader(
                    color: color,
                    size: themeExtension.searchButtonLoadingSize,
                  )
                  : Icon(themeExtension.searchButtonIcon, color: color),
        );
      },
    );
  }
}

final class _SearchSection<T> extends StatelessWidget {
  final Set<T>? results;
  final MyoroMenuItemBuilder<T> itemBuilder;

  const _SearchSection(this.results, this.itemBuilder);

  @override
  Widget build(BuildContext context) {
    return MyoroMenu(
      configuration: MyoroMenuConfiguration(
        itemBuilder: itemBuilder,
        request: () => results!,
      ),
    );
  }
}
