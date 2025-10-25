part of '../myoro_search_input.dart';

/// [State] of [MyoroSearchInput].
final class _MyoroSearchInputState<T> extends State<MyoroSearchInput<T>> {
  late final MyoroSingleInputDropdownController<T> _controller;

  @override
  void initState() {
    super.initState();
    final inputController = TextEditingController();
    _controller = MyoroSingleInputDropdownController<T>(
      inputController: inputController,
      configuration: MyoroSingleInputDropdownConfiguration(
        label: widget.label,
        menuConfiguration: MyoroSingleMenuConfiguration(
          request: () => widget.request(inputController.text),
          onEndReachedRequest: widget.onEndReachedRequest,
          itemBuilder: widget.itemBuilder,
        ),
        selectedItemBuilder: widget.selectedItemBuilder,
      ),
    );
  }

  @override
  void dispose() {
    _controller.inputController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    return MyoroSingleInputDropdown<T>(
      controller: _controller,
      inputSuffix: _SearchButton<T>(
        () => _controller
          ..disableDropdown()
          ..enableDropdown(),
      ),
    );
  }
}
