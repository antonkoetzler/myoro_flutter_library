import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Request to be executed when the input is triggered;
typedef MyoroSearchInputRequest<T> = FutureOr<Set<T>> Function(String text);

/// Search input. Shows a dropdown after making a search request.
class MyoroSearchInput<T> extends StatefulWidget {
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
  final MyoroRequestEnum _status;
  final MyoroFormController _formController;

  const _SearchButton(this._status, this._formController);

  @override
  Widget build(BuildContext context) {
    return MyoroButton(
      configuration: MyoroButtonConfiguration(
        borderBuilder: (_) => MyoroButtonVariantEnum.border(context),
        onTapUp: _onTapUp,
      ),
      builder: _builder,
    );
  }

  void _onTapUp(_) {
    _status.isLoading ? {} : _formController.finish();
  }

  Widget _builder(BuildContext context, __) {
    final themeExtension =
        context.resolveThemeExtension<MyoroSearchInputThemeExtension>();

    return _status.isLoading
        ? MyoroCircularLoader(size: themeExtension.searchButtonLoadingSize)
        : Icon(themeExtension.searchButtonIcon);
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
