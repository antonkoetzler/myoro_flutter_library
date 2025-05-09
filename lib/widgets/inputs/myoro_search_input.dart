import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Search input. Shows a dropdown after making a search request.
class MyoroSearchInput<T> extends StatefulWidget {
  /// Configuration.
  final MyoroSearchInputConfiguration<T> configuration;

  const MyoroSearchInput({super.key, required this.configuration});

  @override
  State<MyoroSearchInput<T>> createState() => _MyoroSearchInputState<T>();
}

final class _MyoroSearchInputState<T> extends State<MyoroSearchInput<T>> {
  MyoroSearchInputConfiguration<T> get _configuration => widget.configuration;

  TextEditingController? _localTextController;
  TextEditingController get _textController {
    return _configuration.inputConfiguration.controller ?? (_localTextController ??= TextEditingController());
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
    if (_configuration.inputConfiguration.controller == null) _textController.dispose();
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
        configuration: MyoroFormConfiguration(
          controller: _formController,
          request: () async => await _configuration.request.call(_textController.text),
          onSuccess: (_) => _focusNode.requestFocus(),
          builder: (Set<T>? results, MyoroRequestEnum status, MyoroFormController controller) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                MyoroInput(
                  configuration: _configuration.inputConfiguration.copyWith(
                    controller: _textController,
                    suffix: _SearchButton(status, controller),
                    onChanged: _configuration.requestWhenChanged ? (_) => _formController.finish() : null,
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
                        Flexible(child: _SearchSection(results, _configuration.itemBuilder)),
                      ],
                    );
                  },
                ),
              ],
            );
          },
        ),
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
    final themeExtension = context.resolveThemeExtension<MyoroSearchInputThemeExtension>();

    return _status.isLoading
        ? MyoroCircularLoader(
          configuration: MyoroCircularLoaderConfiguration(size: themeExtension.searchButtonLoadingSize),
        )
        : Icon(themeExtension.searchButtonIcon);
  }
}

final class _SearchSection<T> extends StatelessWidget {
  final Set<T>? results;
  final MyoroMenuItemBuilder<T> itemBuilder;

  const _SearchSection(this.results, this.itemBuilder);

  @override
  Widget build(BuildContext context) {
    return MyoroMenu(configuration: MyoroMenuConfiguration(itemBuilder: itemBuilder, request: () => results!));
  }
}
